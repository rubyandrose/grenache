require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:new_post) {Post.create(content: 'Hey you jabroni')}
  context 'when post contains banned words' do
    it 'changes words to asterisks' do
      expect(new_post.content).to eq 'Hey you *******'
    end
  end
end
