require 'rails_helper'

RSpec.describe Post do
  it 'requires the content to be >1 characters' do
    post = Post.new
    post.content = ""
    expect(post.valid?).to eq false
    expect(post.errors.keys).to include(:content)
  end

  it 'requires the content to be <200 characters' do
    post = Post.new
    post.content = "oops, too much content!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    expect(post.valid?).to eq false
    expect(post.errors.keys).to include(:content)
  end
end
