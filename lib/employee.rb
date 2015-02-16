require 'sequel'
require 'jdbc/mysql'
class Employee
  DB = Sequel.connect('jdbc:mysql://localhost:3306/test?user=root&password=toor')

  def self.insert_row(employee_insert)
    employee = DB[:employee]
    employee.insert(:gender => employee_insert[0], :first_name => employee_insert[1], :last_name => employee_insert[2],
                    :hire_date => employee_insert[3], :pay_code => employee_insert[4], :department => employee_insert[5], :role => employee_insert[6])
  end
end

