class Order < ApplicationRecord
  belongs_to :customer
  validates_associated :customer
  validates_presence_of :customer
  validates :product_name, presence: true
  validates :product_count, presence: true
  validates :product_count, numericality: { 
    only_integer: true,  
    greater_than: 0
  }
end
