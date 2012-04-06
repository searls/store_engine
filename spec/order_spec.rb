$:.unshift("lib")

require 'gimme'
require 'rspec/given'
require 'order'

describe Order do
  Given(:user) { gimme }
  Given(:product) { gimme }
  subject { Order.new(user: user, products: [product]) }

  describe "validation" do
    context "already valid" do
      Then { subject.should be_valid }
    end

    context "without a user" do
      When { subject.user = nil }
      Then { subject.should_not be_valid }
    end

    context "with 0 products" do
      When { subject.products = [] }
      Then { subject.should_not be_valid }
    end
  end
end