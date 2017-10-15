require 'rails_helper'

RSpec.describe User do
  subject { User.new }

  describe 'validations' do
    context 'given a picture_url that does not end in an image format' do
      it "invalidates the user's picture_url" do
        subject.picture_url = "folder/not_image.csv"
        expect(subject.valid?).to eq false
        expect(subject.errors[:picture_url]).to include 'must end in an image format'
      end
    end

    context 'given a picture_url that ends in a JPG image format' do
      it "does not invalidate the user's picture_url" do
        subject.picture_url = "folder/image.jpg"
        expect(subject.valid?).to eq true
        expect(subject.errors[:picture_url]).to be_blank
      end
    end

    context 'given a picture_url that ends in a PNG image format' do
      it "does not invalidate the user's picture_url" do
        subject.picture_url = "folder/image.png"
        expect(subject.valid?).to eq true
        expect(subject.errors[:picture_url]).to be_blank
      end
    end
  end
end
