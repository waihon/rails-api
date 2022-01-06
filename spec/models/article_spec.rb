require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "#validations" do
    it "tests that factory is valid" do
      article = build(:article)

      expect(article).to be_valid
    end

    it "has an invalid title" do
      article = build(:article, title: "")

      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end
  end
end
