require 'rails_helper'

RSpec.describe Article, type: :model do
  it "tests that factory is valid" do
    article = build(:article)

    expect(article).to be_valid
  end
end
