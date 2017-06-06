require "test_helper"

describe "Dashboards API" do
  it "calls recent dashboards API" do
    client = Redash.client
    assert { client.dashboards.recent.any? }
  end
end
