require "test_helper"

describe "Dashboards API" do
  it "calls recent dashboards API" do
    VCR.use_cassette("redash_api", record: :new_episodes) do
      response = Redash.client.get("/api/dashboards/recent")
      assert { response.success? }
    end
  end
end
