require 'rails_helper'

describe Flavor, type: :model do
  describe 'relationships' do
    it { should belong_to :shops }
  end

  describe 'flavor attributes' do
    #should instead of is_expected 
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:nut_free) }
    it { is_expected.to validate_presence_of(:calories_per_scoop) }
    it { is_expected.to validate_presence_of(:shop_id) }
    it { is_expected.to validate_presence_of(:created_at) }
    it { is_expected.to validate_presence_of(:updated_at) }
  end
end
