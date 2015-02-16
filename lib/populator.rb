require 'generator'
require 'employee'
class Populator
  def self.populate
    1.upto(10000) do
      employee = Generator.create_employee
      Employee.insert_row(employee)
    end
  end
end