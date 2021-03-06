require 'rails_helper'

RSpec.describe Occurrences::AddValue do
  before do
    @policeman = FactoryBot.create(:policeman)
    @occurrence = Occurrence.new
    @occurrence.policeman = @policeman
    @occurrence.date = DateTime.now
    @occurrence.type_name = "Colete"
  end

  it '#call' do

    Occurrences::AddValue.new(@occurrence).call

    @occurrence.save

    expect(@occurrence.value).to eq(8)
  end
end
