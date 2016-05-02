# frozen_string_literal: true
require "only_google_apis/version"

module OnlyGoogleApis
  GOOGLE_USER_AGENT = 'APIs-Google; (+https://developers.google.com/webmasters/APIs-Google.html)'
  GOOGLEBOT = '.googlebot.com'
  GOOGLECOM = '.google.com'
  def self.matches?(request)
    return false unless request.env['HTTP_USER_AGENT'] == GOOGLE_USER_AGENT

    begin
      name = Resolv.getname(request.ip.to_s)
      reversed_ip = Resolv.getaddress(name)

      reversed_ip == request.ip.to_s && google?(name)
    rescue Resolv::ResolvError
      false
    end
  end

  def self.google?(name)
    name.end_with?(GOOGLEBOT, GOOGLECOM)
  end
end
