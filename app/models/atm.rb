class Atm < ApplicationRecord
  #Associations
  has_many :atm_bills
  has_many :atm_transactions
  has_many :bills, through: :atm_bills

  #Validations
  validates_presence_of :title

  def balance
    bills = {}
    Bill::DENOMINATIONS.each do |denomination|
      bills[denomination] = self.bills.where(value: denomination).count
    end
    bills
  end
end
