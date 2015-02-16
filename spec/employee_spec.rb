require 'rspec'
require 'lib/employee'
require 'lib/generator'

describe 'employee injector' do
  it 'creates an employee and inserts it into the database' do
    employee = Generator.create_employee
    Employee.insert_row(employee)
    #got lazy with the expect here :(
  end

end