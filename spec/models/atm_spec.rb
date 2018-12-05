require 'rails_helper'

RSpec.describe Atm, type: :model do
  it { should have_many(:atm_bills) }
  it { should have_many(:atm_transactions) }

  it { should validate_presence_of(:title) }

  context 'when the atm is empty' do
    let(:atm) { create(:atm) }

    it 'balance must show 0 bills' do
      expect(atm.bills.count).to eq(0)
    end
  end
end
