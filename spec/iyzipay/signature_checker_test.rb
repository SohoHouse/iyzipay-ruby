# frozen_string_literal: true

require 'spec_helper'
require 'openssl'
require 'json'

RSpec.describe Iyzipay::SignatureChecker do
  let(:iyzipay_options) { double('IyzipayOptions', secret_key: 'secret') }
  let(:response) { '{"price":"100.00","signature":"valid_signature"}' }
  let(:fields) { ['price'] }
  let(:checker) { described_class.new(response, iyzipay_options, fields) }

  it 'returns the correct signature' do
    allow(OpenSSL::HMAC).to receive(:hexdigest).and_return('valid_signature')
    expect(checker.signature).to eq('valid_signature')
  end

  it 'returns the correct string to sign' do
    expect(checker.string_to_sign).to eq('100')
  end

  it 'extracts the price field correctly' do
    expect(checker.extract_field('price')).to eq('100')
  end

  it 'extracts a non-price field correctly' do
    response = '{"other_field":"value"}'
    checker = described_class.new(response, iyzipay_options, ['other_field'])
    expect(checker.extract_field('other_field')).to eq('value')
  end

  it 'checks the signature correctly' do
    allow(OpenSSL::HMAC).to receive(:hexdigest).and_return('valid_signature')
    expect(checker.check_signature).to be true
  end

  it 'raises an error for invalid signature' do
    allow(OpenSSL::HMAC).to receive(:hexdigest).and_return('invalid_signature')
    expect { checker.verify }.to raise_error(Iyzipay::SignatureError)
  end

  it 'handles missing signature in response' do
    response = '{"price":"100.00"}'
    checker = described_class.new(response, iyzipay_options, fields)
    expect(checker.check_signature).to be_nil
  end

  it 'handles empty response' do
    response = '{}'
    checker = described_class.new(response, iyzipay_options, fields)
    expect(checker.extract_field('price')).to eq('')
  end
end
