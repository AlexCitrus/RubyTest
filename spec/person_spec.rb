require 'test'

RSpec.describe Person do
    person = Person.new("Tyler")

    context "greeting method is called with a name" do
        it "greets someone with Hello there! and their name" do
            expect(person.greeting).to eq("Hello there, #{person.name}!")
        end
    end
end
