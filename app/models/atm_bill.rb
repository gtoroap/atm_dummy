class AtmBill < ApplicationRecord
  #Associations
  belongs_to :atm
  belongs_to :bill
end
