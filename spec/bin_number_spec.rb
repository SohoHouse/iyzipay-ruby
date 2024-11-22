# coding: utf-8

require_relative 'spec_helper'

RSpec.describe 'Iyzipay' do
  before :all do
    @options = Iyzipay::Options.new
    @options.api_key = ENV['IYZIPAY_API_KEY']
    @options.secret_key = ENV['IYZIPAY_SECRET_KEY']
    @options.base_url = 'https://sandbox-api.iyzipay.com'
  end

  it 'should retrieve bin number' do
    request = {
        locale: Iyzipay::Model::Locale::TR,
        conversationId: '123456789',
        binNumber: '554960'
    }
    bin_number = Iyzipay::Model::BinNumber.new.retrieve(request, @options)
    begin
      $stderr.puts bin_number.inspect
    rescue
      $stderr.puts 'oops'
      raise
    end
  end

  after :each do
  end
end