require 'app'

describe 'myapp' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET /' do
    before do
      get '/'
    end

    it 'returns OK' do
      expect(last_response).to be_ok
    end

    it 'returns Hello World' do
      expect(last_response.body).to eq 'Hello world!'
    end
  end
end
