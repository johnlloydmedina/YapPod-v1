require 'rails_helper'

RSpec.describe Private::Conversation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

context 'Scopes' do
  it 'gets a conversation between users' do
    user1 = create(:user)
    user2 = create(:user)
    create(:private_conversation, recipient_id: user1.id, sender_id: user2.id)
    conversation = Private::Conversation.between_users(user1.id, user2.id)
    expect(conversation.count).to eq 1
  end
end