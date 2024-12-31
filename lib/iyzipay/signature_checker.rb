module Iyzipay
  class SignatureChecker

    attr_reader :response, :iyzipay_options, :fields

    class ::Iyzipay::SignatureError < StandardError; end

    def initialize(response, iyzipay_options, fields)
      @response = JSON::parse(response) rescue {}
      @iyzipay_options = iyzipay_options
      @fields = fields
    end

    def signature
      OpenSSL::HMAC.hexdigest("SHA256", iyzipay_options.secret_key, string_to_sign)
    end

    def string_to_sign
      fields.map { |field| extract_field(field) }.join(':')
    end

    def extract_field(field)
      return response['price'].to_s.sub(/0+$/, '').chomp('.') if field == 'price'
      response[field].to_s
    end

    def check_signature
      signature == response['signature'] if response['signature']
    end

    def status_success?
      response['status'] == 'success'
    end

    def verify
      return unless status_success? # skip signature check if status is not success
      raise Iyzipay::SignatureError.new('Signature is invalid') unless check_signature
    end
  end
end
