require 'securerandom'

module Iyzipay
  class IyzipayResource

    AUTHORIZATION_HEADER_NAME = 'Authorization'
    RANDOM_HEADER_NAME = 'x-iyzi-rnd';
    RANDOM_STRING_SIZE = 8

    def get_http_header(pki_string = nil, options = nil, path = nil, authorize_request = true)
      header = { :accept => 'application/json',
        :'content-type' => 'application/json' }

      if authorize_request
        random_header_value = SecureRandom.alphanumeric(RANDOM_STRING_SIZE)
        header[:'Authorization'] = Iyzipay::Signer.new(pki_string, random_header_value, options, path).prepare_authorization_string
        header[:'x-iyzi-rnd'] = random_header_value
        header[:'x-iyzi-client-version'] = "#{Gem.loaded_specs['iyzipay'].name}-#{Gem.loaded_specs['iyzipay'].original_platform}-#{Gem.loaded_specs['iyzipay'].version}"
      end

      header
    end

    def json_decode(response, raw_result)
      json_result = JSON::parse(raw_result)
      response.from_json(json_result)
    end

    def post_request(path, request, options, signature_fields = {})
      url = "#{options.base_url}#{path}"
      headers = get_http_header(request.to_json, options, path)
      response = HttpClient.post(url, headers, request.to_json)
      Iyzipay::SignatureChecker.new(response, options, signature_fields).verify if signature_fields.any? # raise error if signature is invalid
      response
    end

    def put_request(path, request, options)
      HttpClient.put("#{options.base_url}#{path}", get_http_header(request.to_json, options, path), request.to_json)
    end

    def delete_request(path, request, options)
      HttpClient.delete("#{options.base_url}#{path}", get_http_header(request.to_json, options, path), request.to_json)
    end
  end
end
