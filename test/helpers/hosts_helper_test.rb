require "minitest_helper"

class HostsHelperTest < MiniTest::Rails::Helper
  before do
    @helper= HostsHelper.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
