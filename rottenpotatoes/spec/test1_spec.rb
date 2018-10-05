


describe 'Should not find movie in empty database' do
    it 'should not be defined' do
        expect { Movies.find_by_title("Alien") }.to raise_error
    end
end

describe 'Find Empty String in Database' do
    it 'should raise error' do
        expect { Movies.find_by_title("") }.to raise_error
    end
end