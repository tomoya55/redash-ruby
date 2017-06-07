require "test_helper"

describe "Dashboards API" do
  it "calls recent dashboards API" do
    client = Redash.client
    VCR.use_cassette("redash_api") do
      response = client.get("/api/dashboards/recent")
      assert { response.success? }
    end
  end
end
