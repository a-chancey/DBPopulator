require 'date'

class Generator
  def self.create_employee
    gender = gen_gender
    output = []
    output << gender
    output << gen_first_name(gender)
    output << gen_last_name
    output << gen_hire_date
    output << gen_paycode(6)
    output << gen_paycode(6) #department
    output << gen_paycode(5) #role
    output
  end

  def self.gen_last_name
    @last_name = %W[Smith Johnson Williams Brown Jones Miller Davis Garcia Rodriguez Wilson Martinez Anderson Taylor Thomas Hernandez Moore Martin Jackson Thompson White Lopez Lee Gonzalez Harris Clark Lewis Robinson Walker Perez Hall]
    @last_name.sample
  end

  def self.gen_first_name(gender)
    if gender == 'm'
      @first_name = %W[Noah Liam Jacob Mason Ethan Michael Alexander Aiden Benjamin Jackson David Andrew Samuel Christopher Dylan Isaac Luke Christian Hunter Owen Jack Wyatt Jonathan Eli Isaiah Sebastian Levi Aaron]
      @first_name.sample
    elsif gender == 'f'
      @first_name = %W[Sophia Emma Olivia Mia Emily Abigail Sofia Chloe Ella Aubrey Grace Hannah Zoey Lillian Brooklyn Samantha Zoe Audrey Leah Allison Anna Gabriella Kaylee Scarlett Hailey Arianna Riley Alexis Sarah Claire Sadie]
      @first_name.sample
    end
  end

  def self.gen_gender
    gender = %W[m f]
    gender.sample
  end

  def self.gen_hire_date
    picker = rand(20...10000)
    date = Date.today - picker
    date
  end

  def self.gen_paycode(num)
    paycode = rand(0...num)
    paycode
  end
end