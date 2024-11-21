module Iyzipay
  class Signer
    AUTHORIZATION_HEADER_STRING = 'IYZWSv2 %s'

    attr_reader :request_string, :random_header_value, :iyzipay_options, :api_path

    def initialize(request_string, random_header_value, iyzipay_options, api_path)
      @request_string = request_string
      @random_header_value = random_header_value
      @iyzipay_options = iyzipay_options
      @api_path = api_path
    end

    def prepare_authorization_string
      auth_string = "apiKey:#{iyzipay_options.api_key}&randomKey:#{random_header_value}&signature:#{calculate_hash}"
      sprintf(AUTHORIZATION_HEADER_STRING, Base64.strict_encode64(auth_string))
    end

    def calculate_hash
      signature_src = random_header_value + api_path + request_string
      OpenSSL::HMAC.hexdigest("SHA256", iyzipay_options.secret_key, signature_src)
    end
  end
end