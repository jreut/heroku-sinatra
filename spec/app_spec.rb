RSpec.describe App do
  # Define the app that Rack::Test will use
  def app
    App
  end

  context 'homepage' do
    before :context do
      get '/'
    end

    it 'should work' do
      expect(last_response).to be_ok
    end

    it 'should be friendly' do
      expect(last_response.body).to_not be_empty
    end
  end
end
