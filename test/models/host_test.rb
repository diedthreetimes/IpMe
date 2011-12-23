require "minitest_helper"

class HostTest < MiniTest::Rails::Model
  before do
    @host = Host.new
  end

  it "must be valid" do
    @host.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @host.blow_minds!
  #     @host.interesting?.must_equal true
  #   end
  # end
end