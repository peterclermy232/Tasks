# psuedo code
# input = salary:float
# output  =net_salary:float, tax_deductions:float
# calculate all tax deductions
# return netsalary = salary - tax deductions

class Payroll

    attr_accessor :salary, :name
    
    def initialize(name,salary)
      @name=name
      @salary=salary
    end
  
    def gross_salary
      #before all deductions
      @salary
    end
    
    def payee
      #<24000==10%
      #24001-32333==25%
      #>32333==30%
      if @salary >23000 && @salary <=24000
        return @salary*0.1
      elsif @salary >= 24001 && @salary <= 32333 
        return @salary*0.25
      elsif @salary >= 32333
        return @salary*0.3
      else
        return 0 
      end  
      
    end
  
    def nhif
      #<5999==150
      #<29999==850
      #<44999==1000
      #>100000==1700
      if @salary >1000 && @salary <=5999
        return 150
      elsif @salary > 5999 && @salary <= 29999 
  