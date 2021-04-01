require 'rails_helper'

describe Flavor, type: :model do
  describe 'relationships' do
    it { should belong_to :shop }
  end

  describe 'flavor attributes' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:nut_free) }
    it { should validate_presence_of(:calories_per_scoop) }
    it { should validate_presence_of(:shop_id) }
  end
end
