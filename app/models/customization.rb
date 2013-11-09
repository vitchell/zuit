class Customization < ActiveRecord::Base
	belongs_to :order
	belongs_to :products
end
