require 'rails_helper'

RSpec.describe Message, type: :model do
  describe 'validators' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:msg_body) }
    it { should validate_presence_of(:email) }
    it { should validate_length_of(:name).is_at_least(1) }
    it { should validate_length_of(:last_name).is_at_least(1) }
    it { should validate_length_of(:msg_body).is_at_least(1) }
    it { should validate_length_of(:email).is_at_least(1) }
  end
end

