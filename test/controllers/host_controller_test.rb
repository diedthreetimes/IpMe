require "minitest_helper"

class HostControllerTest < MiniTest::Rails::Controller
  before do
    @controller = HostController.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
