$:.unshift("lib")

require 'gimme'
require 'rspec/given'
require 'order'

describe Order do
  Given(:user) { gimme }
  subject { Order.new(user: user) }

  describe "validation" do
    context "already valid" do
      Then { subject.should be_valid }
    end

    context "without a user" do
      When { subject.user = nil }
      Then { subject.should_not be_valid }
    end
  end
end