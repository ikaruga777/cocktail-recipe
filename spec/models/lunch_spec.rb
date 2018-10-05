require 'rails_helper'

RSpec.describe Lunch do
  describe '#state' do
    let(:lunch) { build_stubbed(:lunch, state: state) }

    context '空のとき' do
      let(:state) { nil }

      specify { expect(lunch).to be_invalid }
    end
  end

  describe '#scheduled_for' do
    let(:lunch) { build_stubbed(:lunch, scheduled_for: scheduled_for) }

    context '空のとき' do
      let(:scheduled_for) { nil }

      specify { expect(lunch).to be_invalid }
    end
  end
end
