# coding: utf-8

require_relative 'spec_helper'

RSpec.describe 'Iyzipay' do
  before :all do
    @options = Iyzipay::Options.new
    @options.api_key = ENV['IYZIPAY_API_KEY']
    @options.secret_key = ENV['IYZIPAY_SECRET_KEY']
    @options.base_url = 'https://sandbox-api.iyzipay.com'
  end

  it 'should cancel payment' do
    request = {
        locale: Iyzipay::Model::Locale::TR,
        conversationId: '123456789',
        paymentId: '1',
        ip: '85.34.78.112'
    }
    cancel = Iyzipay::Model::Cancel.new.create(request, @options)
    begin
      $stderr.puts cancel.inspect
    rescue
      $stderr.puts 'oops'
      raise
    end
  end

  after :each do
  end
end