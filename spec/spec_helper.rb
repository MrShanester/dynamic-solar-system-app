
RSpec.describe "Planets", type: :request do 
  describe "GET /planets" do
    it "does stuff" do
      gets '/planets'
      planets = JSON.parse(response.body)
      expect(response).to have_http_status(200)
    end
  end
end
