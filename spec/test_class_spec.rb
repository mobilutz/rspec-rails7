# frozen_string_literal: true

require 'rails_helper'
require 'net/smtp'

RSpec.describe TestClass do
  subject(:test_class) { described_class.new }

  let(:error_class) { ::Net::SMTPAuthenticationError }
  let(:error_message) { 'Authentication Error' }

  before do
    allow(::Mailer).to receive(:something).and_raise(error_class, error_message)
  end

  it 'does something' do
    expect { test_class.perform }.to raise_error(::SomeError)
  end
end
