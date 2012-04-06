class Order
  attr_accessor :user

  def initialize(options)
    @user = options[:user]
  end

  def valid?
    !!@user
  end
end