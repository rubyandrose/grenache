require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    context 'given no content data' do
      it 'is invalid' do
        post = Post.new(content: nil)
        expect(post.valid?).to eq false
        expect(post.errors[:content]).to include "can't be blank"
      end
    end

    context 'given no user to associate the post to' do
      it 'is invalid' do
        post = Post.new(user: nil)
        expect(post.valid?).to eq false
        expect(post.errors[:user]).to include "can't be blank"
      end
    end
  end
end
