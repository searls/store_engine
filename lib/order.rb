class Order
  attr_accessor :user, :products

  def initialize(options)
    @user = options[:user]
    @products = options[:products]
  end

  def valid?
    user && products && !products.empty?
  end
end