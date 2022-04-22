require 'rails_helper'

RSpec.describe Policemen::ScoreByMonth do
  before do
    @policeman = FactoryBot.create(:policeman)
    @oc_current_month = FactoryBot.create_list(:occurrence, 2, value: 11, policeman: @policeman, date: DateTime.now)
    @oc_last_month = FactoryBot.create(:occurrence, value: 10, policeman: @policeman, date: DateTime.now - 1.month)
  end

  it '#call' do
    result = Policemen::ScoreByMonth.new(@policeman).call
    expect(result).to eq(22)
  end
end
