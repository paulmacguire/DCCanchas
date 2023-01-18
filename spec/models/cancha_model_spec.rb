# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cancha, type: :model do
  describe '#factory' do
    it 'is valid' do
      expect(build(:cancha)).to be_valid
    end
  end
end
