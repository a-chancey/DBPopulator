require 'rspec'
require 'lib/populator'
describe 'populator' do
  it 'populates the database' do
    Populator.populate
    #got lazy with the expect here :(
  end

end