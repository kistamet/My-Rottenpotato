require 'rails_helper'

RSpec.describe Movie, type: :model do
    let (:subject) { Movie.new }

    describe "Movie title" do
        it "Should be Movie title " do
            subject.Movie_title
            expect(subject.title).to eq('MIB')
        end
    end

    describe "Movie description" do
        it "Should be Movie description" do
            subject.Movie_description
            expect(subject.description).to eq('American science fiction action comedy film')
        end
    end

    describe "Movie release date" do
        it "Should be Movie release date" do
            subject.Movie_release
            expect(subject.release_date).to eq('September 21, 2016')
        end
    end
end
