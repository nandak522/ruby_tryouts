class Employee
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end
    #def name
    #    @name
    #end

    #def name=(new_name)
    #    @name
    #end
end

class AccountEmployee < Employee
    attr_accessor :name
    attr_reader :category

    def initialize(name)
        @name = name
        @category = 'Accounts'
    end

    def to_s
        'Object:' + @name
    end
end

emp = Employee.new(name='Nanda')
puts '==>%s' % emp.name
emp.name = 'Nanda Kishore'
puts '==>%s' % emp.name

aemp = AccountEmployee.new(name='HR')
puts '==>%s' % aemp
puts '==>%s' % aemp.name
puts '==>%s' % aemp.category
