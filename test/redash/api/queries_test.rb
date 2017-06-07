require "test_helper"

describe "Queries API" do
  it "posts query" do
    VCR.use_cassette("redash_api", record: :new_episodes, match_requests_on: [:method, :uri, :body]) do
      data_source_id = Redash.client.get("/api/data_sources").json[0]["id"]

      response = Redash.client.post("/api/queries",
        data_source_id: data_source_id,
        name: "Employee count",
        query: "select count(*) from employees;"
      )
      assert { response.success? }
      assert { response.json["id"] > 0 }
    end
  end
end
