require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "#validations" do
    let(:article) { build(:article) }

    it "tests that factory is valid" do
      expect(article).to be_valid
    end

    it "has an invalid title" do
      article.title = ""

      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end

    it "has an invalid content" do
      article.content = ""

      expect(article).not_to be_valid
      expect(article.errors[:content]).to include("can't be blank")
    end

    pending "has an invalid slug"

    pending "validates the uniqueness of the slug"
  end
end
