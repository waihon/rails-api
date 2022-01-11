require 'rails_helper'

describe UserAuthenticator do
  describe "#perform" do
    let(:authenticator) { described_class.new("sample_code") }

    subject { authenticator.perform }

    context "when code is incorrect" do
      it "should raise an error" do
        aggregate_failures do
          expect { subject }.to raise_error(
            UserAuthenticator::AuthenticationError
          )
          expect(authenticator.user).to be_nil
        end
      end
    end
  end
end