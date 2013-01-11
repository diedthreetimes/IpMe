require "minitest_helper"

class HostHelperTest < MiniTest::Rails::Helper
  before do
    @helper= HostHelper.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
