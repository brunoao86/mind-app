require 'rails_helper'

RSpec.describe Tag, type: :model do
  let(:user) { User.create(email: 'teste@teste.com', password: '123456') }
  subject { Tag.new(name: 'TestTag', user: user) }

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:tag_contents).dependent(:destroy) }
    it { should have_many(:contents).through(:tag_contents) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:user_id).case_insensitive }
  end
end
