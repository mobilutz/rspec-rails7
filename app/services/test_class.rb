# frozen_string_literal: true

require 'net/smtp'

class TestClass
  def perform
    ::Mailer.something
  rescue Net::SMTPError => e
    raise(SomeError, "#{e.class}", "#{e.message}")
  end
end
