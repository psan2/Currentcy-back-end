class Currency < ApplicationRecord
  has_many :from_currencies, :class_name => "Tracker", :foreign_key => 'from_currency_id'
  has_many :to_currencies, :class_name => "Tracker", :foreign_key => 'to_currency_id'
end
