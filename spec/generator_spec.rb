require 'rspec'
require 'lib/generator'
class GeneratorSpec
  describe 'Random Generator' do
    it 'returns an array that contains a gender, first name, last name, hire date and paycode' do
      emp = Generator.create_employee

      expect(emp.class).to be(Array)
      expect(emp.length).to be(7)
      expect(emp[0]).to match(/[m]|[f]/)
      expect(emp[1].class).to be(String)
      expect(emp[2].class).to be(String)
      expect(emp[3]).to be < (Date.today)
      expect(emp[4]).to be < (7)
      expect(emp[4]).to be >= (0)
    end

    it 'returns m or f for random gender' do
      1.upto(10) do
        gender = Generator.gen_gender
        expect(gender).to match(/[m]|[f]/)
      end
    end
    it 'expects the return type to be a string for first name' do
      1.upto(10) do
        first_name = Generator.gen_first_name(Generator.gen_gender)
        expect(first_name.class).to be(String)
      end
    end
    it 'expects a string for last name' do
      1.upto(10) do
        last_name = Generator.gen_last_name
        expect(last_name.class).to be(String)
      end
    end
    it 'returns a hire date prior to today' do
      hire_date = Generator.gen_hire_date
      expect(hire_date).to be < (Date.today)
    end

    it 'returns a valid paycode' do
      paycode = Generator.gen_paycode
      expect(paycode).to be < (7)
      expect(paycode).to be >= (0)
    end
  end
end