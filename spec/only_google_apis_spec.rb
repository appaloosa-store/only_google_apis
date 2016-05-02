require 'ostruct'
require 'spec_helper'

describe OnlyGoogleApis do
  it 'has a version number' do
    expect(OnlyGoogleApis::VERSION).not_to be nil
  end

  describe '.matches?' do
    let(:request) do
      OpenStruct.new(ip: ip, env: { 'HTTP_USER_AGENT' => user_agent })
    end

    subject { OnlyGoogleApis.matches?(request) }

    context 'valid user_agent' do
      let(:user_agent) { 'APIs-Google; (+https://developers.google.com/webmasters/APIs-Google.html)' }

      context 'invalid resolv' do
        let(:ip) { '208.69.38.205' }
        it { is_expected.to be_falsey }
      end

      context 'valid resolv' do
        let(:ip) { '8.8.8.8' }
        it { is_expected.to be_truthy }
      end
    end

    context 'invalid user_agent' do
      let(:user_agent) { 'Nice one' }

      context 'invald resolv' do
        let(:ip) { '208.69.38.205' }
        it { is_expected.to be_falsey }
      end

      context 'valid resolv' do
        let(:ip) { '8.8.8.8' }
        it { is_expected.to be_falsey }
      end
    end
  end
end
