class Bill < ApplicationRecord

  DENOMINATIONS = [100_000, 50_000, 20_000, 10_000]
  #Associations
  has_many :atm_bills
end
