require 'int_to_alpha'

RSpec.describe Int_to_alphabet do


    context "convert method is called with an integer" do

        it 'Should return 1 => A if input is 1' do
            Int_to_alphabet = described_class.new(1)
            expect(Int_to_alphabet.convert).to eq("1 => A")
        end

        it 'Should return 20 => T if input is 20' do
            Int_to_alphabet = described_class.new(20)
            expect(Int_to_alphabet.convert).to eq("20 => T")
        end

        it 'Should return 26 => Z if input is 26' do
            Int_to_alphabet = described_class.new(26)
            expect(Int_to_alphabet.convert).to eq("26 => Z")
        end

        it 'Should return 100 => CV if input is 100' do
            Int_to_alphabet = described_class.new(100)
            expect(Int_to_alphabet.convert).to eq("100 => CV")
        end

        it 'Should return 1000 => ALL if input is 1000' do
            Int_to_alphabet = described_class.new(1000)
            expect(Int_to_alphabet.convert).to eq("1000 => ALL")
        end

        it 'Should return Oops! invalid input! when input is not an integer' do
            Int_to_alphabet = described_class.new("okay")
            expect(Int_to_alphabet.convert).to eq("Oops! invalid input!")
        end

        it 'Should return Oops! invalid input! when input is less than 1' do
            Int_to_alphabet = described_class.new(0)
            expect(Int_to_alphabet.convert).to eq("Oops! invalid input!")
        end
    end
end
