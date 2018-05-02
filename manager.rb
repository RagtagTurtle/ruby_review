module EmailReportable  # module names use Camel Case just like classes
  def send_report
    puts "Sending email....."
    # the code to send email
    puts "Email sent"
  end
end

class Employee
  attr_reader :first_name, :salary, :active
  attr_writer :first_name, :last_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

class Manager < Employee # this means that the manager inherits everything from the Employee class
  include EmailReportable

  attr_reader :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    #loop through employees
    # use give_annual_raise method to raise each employees salary
    employees.each do |employee|
      employee.give_annual_raise
    end
  end

  # def a
  #   "apple"     # Example of using a method inside of a method. If you run both of these, it will print apple twice. 
  # end

  # def b
  #   a 
  # end

  def fire_all_employees
    # loop through each employee
    # change individual employment status to false
    employees.each do |managers_employee|
      managers_employee.active = false
    end
  end
end

class Intern < Employee
  include EmailReportable
end








employee_1 = Employee.new(
                          first_name: "Tim", 
                          last_name: "Taylor", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Walter", 
                          last_name: "Cronkite", 
                          salary: 80000, 
                          active: true
                          )

manager_1 = Manager.new(
                        first_name: "Betty",
                        last_name: "Crocker",
                        salary: 100000,
                        active: true,
                        employees: [employee_1, employee_2]
                        )

intern = Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 25000,
                    active: true,
                    )



intern.print_info
intern.send_report






