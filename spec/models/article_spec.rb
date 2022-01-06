require 'rails_helper'

RSpec.describe Article, type: :model do
  it "tests article object" do
    article = create(:article)

    expect(article.title).to eq("Sample article")
    expect(article.new_record?).to be_falsey
  end
end
