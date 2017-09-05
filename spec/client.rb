require 'spec_helper'

describe DestinyApi::Client do
  subject { described_class.new }
  let(:http_client) { double('http_client', :get => true) }
  let(:base_url) { 'https://www.bungie.net/Platform/' }
  before { allow(HTTPClient).to receive(:new).and_return(http_client) }

  context '.get' do
    let(:endpoint) { 'Destiny2/Manifest' }

    it 'should make get request to bungie server' do
      expect(http_client).to receive(:get).with(base_url + endpoint, nil, 'X-API-KEY' => 'foo')
      subject.get(endpoint)
    end

    it 'should raise an error if no api_key is set' do
      allow(subject).to receive(:api_key).and_return(nil)
      expect{ subject.get(endpoint) }.to raise_error('Missing API Key. Please be sure to set this using the gems configuration.')
    end
  end
end
