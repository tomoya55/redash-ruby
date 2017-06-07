require "test_helper"

describe "Data Sources API" do
  it "lists Data Sources" do
    VCR.use_cassette("redash_api", record: :new_episodes) do
      response = Redash.client.get("/api/data_sources")
      assert { response.success? }
      assert { response.json[0]["name"] == "employees" }
      assert { response.json[0]["type"] == "mysql" }
    end
  end
end
