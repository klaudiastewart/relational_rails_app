require 'rails_helper'

describe Flavor, type: :model do
  describe 'relationships' do
    it { should belong_to :shop }
  end

  describe 'flavor attributes' do
    # subjisect { Flavor.new }
    # binding.pry
    # it { is_expected.not_to be_valid }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:nut_free) }
    it { is_expected.to validate_presence_of(:calories_per_scoop) }
    it { is_expected.to validate_presence_of(:shop_id) }
    it { is_expected.to validate_presence_of(:created_at) }
    it { is_expected.to validate_presence_of(:updated_at) }
  end
end
