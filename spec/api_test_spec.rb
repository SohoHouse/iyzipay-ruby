# coding: utf-8

require_relative 'spec_helper'

RSpec.describe 'Iyzipay' do
  before :all do
    @options = Iyzipay::Options.new
    @options.api_key = ENV['IYZIPAY_API_KEY']
    @options.secret_key = ENV['IYZIPAY_SECRET_KEY']
    @options.base_url = 'https://sandbox-api.iyzipay.com'
  end

  it 'should test api' do
    api_test = Iyzipay::Model::ApiTest.new.retrieve(@options)
    begin
      $stderr.puts api_test.inspect
    rescue
      $stderr.puts 'oops'
      raise
    end
  end

  after :each do
  end
end