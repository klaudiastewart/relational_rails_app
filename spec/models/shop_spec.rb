require 'rails_helper'

describe Shop, type: :model do
  describe 'relationships' do
    it { should have_many :flavors }
  end

  describe 'shop attributes' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:has_ice_cream_alternatives) }
    it { should validate_presence_of(:google_review_rating) }
  end
end
