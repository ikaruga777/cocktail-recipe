require 'rails_helper'

RSpec.describe Lunch, type: :model do
  describe 'attributes' do
    let(:lunch) { create(:lunch) }
    it { expect(lunch).to respond_to :place }
    it { expect(lunch).to respond_to :scheduled_for }
    it { expect(lunch).to respond_to :state }
  end

  describe 'validates' do
    before do
      @lunch =  carete(:lunch)
    end

    context 'stateが空のとき' do
      it 'invalid' do
        @lunch.state = nil
        expect(@lunch).to be_invalid
      end
    end

    context 'scheduled_forが空のとき' do
      it 'invalid' do
        @lunch.scheculed_for = nil
        expect(@lunch).to be_invalid
      end
    end

    context 'user_idがからのとき' do
      it 'invalid' do
        @lunch.user_id = nil
        expect(@lunch).to be_invalid
      end
    end
  end
end
