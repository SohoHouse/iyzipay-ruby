# coding: utf-8

require_relative 'spec_helper'

RSpec.describe 'Iyzipay' do
  before :all do
    @options = Iyzipay::Options.new
    @options.api_key = ENV['IYZIPAY_API_KEY']
    @options.secret_key = ENV['IYZIPAY_SECRET_KEY']
    @options.base_url = 'https://sandbox-api.iyzipay.com'
  end

  it 'should disapprove payment item' do
    request = {
        locale: Iyzipay::Model::Locale::TR,
        conversationId: '123456789',
        paymentTransactionId: '1'
    }
    disapproval = Iyzipay::Model::Disapproval.new.create(request, @options)
    begin
      $stderr.puts disapproval.inspect
    rescue
      $stderr.puts 'oops'
      raise
    end
  end

  after :each do
  end
end