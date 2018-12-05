atm = Atm.create title: 'Atm Dummy'

#Create some bills for new ATM
Bill::DENOMINATIONS.each do |denomination|
  50.times { atm.bills.create value: denomination, serial: SecureRandom.hex(5), currency: 'COP' }
end
