require 'rails_helper'

describe Shop, type: :model do
  describe 'relationships' do
    it { should have_many :flavors }
  end

  describe 'shop attributes' do
    # subject { Shop.new }
    # binding.pry
    # it { is_expected.not_to be_valid }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:has_ice_cream_alternatives) }
    it { is_expected.to validate_presence_of(:google_review_rating) }
    it { is_expected.to validate_presence_of(:created_at) }
    it { is_expected.to validate_presence_of(:updated_at) }
  end
end
