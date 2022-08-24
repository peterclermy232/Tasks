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

        return850 
    elsif @salary >29999 && @salary <=44999
      return 1000
    elsif @salary >= 100000 
      return 1700
    else
      return 0 
    end  
  end

  def nssf
    #400
    if @salary>1000
      return 400
    else
      0
    end
  end

  def net_salary
    #after all tax deductions
    tax= payee + nssf + nhif
    return (@salary - tax) 
  end
end 

ebbe = Payroll.new("Ebbe",100000)

puts "Gross Salary: #{ebbe.gross_salary}"
puts "NHIF: #{ebbe.nhif}"
puts "NSSF: #{ebbe.nssf}"
puts "PAYEE: #{ebbe.payee}"
puts "Net Salary: #{ebbe.net_salary}"

