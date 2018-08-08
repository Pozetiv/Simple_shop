require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  describe "#create" do
    let( :message_params ) { post :create, params: { message: { name: 'test', last_name: 'test', email: 'tester@test.com', msg_body: 'test message' } } }
    it 'should created' do
      expect{ message_params }.to change(Message, :count).by(1)
    end
    it 'send without param' do
      expect{ post :create, params: { message: { name: 'test' } } }.not_to  change(Message, :count)
    end
  end
end
