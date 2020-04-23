require 'rspec'
require_relative 'dog'


RSpec.describe Dog do
  describe '#bark' do
    it 'return "Wof!"' do
      expect(subject.bark).to eql('Woof!')
    end
  end

  describe '#feed' do
    context 'when dog is hungry' do
      subject { described_class.new(hunger_level: 6) }

      it 'not be hungry' do
        subject.feed
        expect(subject).to_not be_hungry
      end
    end
  end

  describe '#hungry?' do
    context 'when hunger_level is greater than 5' do
      subject { described_class.new(hunger_level: 6) }

      it 'return true' do
        expect(subject).to be_hungry
      end
    end

    context 'when hunger_level equal or less than 5' do
      subject { described_class.new(hunger_level: 4) }

      it 'return false' do
        expect(subject).to_not be_hungry
      end
    end
  end
end
