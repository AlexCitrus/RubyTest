require 'int_to_alpha'

RSpec.describe IntConverter do


    context "convert method is called with an integer" do

        it 'Should return 1 => A if input is 1' do
            IntConverter = described_class.new(1)
            expect(IntConverter.convert).to eq("1 => A")
        end

        it 'Should return 20 => T if input is 20' do
            IntConverter = described_class.new(20)
            expect(IntConverter.convert).to eq("20 => T")
        end

        it 'Should return 26 => Z if input is 26' do
            IntConverter = described_class.new(26)
            expect(IntConverter.convert).to eq("26 => Z")
        end

        it 'Should return 100 => CV if input is 100' do
            IntConverter = described_class.new(100)
            expect(IntConverter.convert).to eq("100 => CV")
        end

        it 'Should return 1000 => ALL if input is 1000' do
            IntConverter = described_class.new(1000)
            expect(IntConverter.convert).to eq("1000 => ALL")
        end

        it 'Should return Oops! invalid input! when input is not an integer' do
            IntConverter = described_class.new("okay")
            expect(IntConverter.convert).to eq("Oops! invalid input!")
        end

        it 'Should return Oops! invalid input! when input is less than 1' do
            IntConverter = described_class.new(0)
            expect(IntConverter.convert).to eq("Oops! invalid input!")
        end
    end
end
