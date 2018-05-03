require "./employee.rb"
require "./email_reportable.rb"

module Actualize
  class Manager < Employee 
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

    def fire_all_employees
      # loop through each employee
      # change individual employment status to false
      employees.each do |managers_employee|
        managers_employee.active = false
      end
    end
  end
end









