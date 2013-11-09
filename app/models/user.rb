class User < ActiveRecord::Base
	has_one :measurement
	has_many :orders
	has_one :cart
end
