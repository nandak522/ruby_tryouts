module Mixins
    def reports_to
        if self.category == 'Accounts'
            return 'CEO'
        else
            return '? (Not sure)'
        end
    end
end

class Employee
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    include Mixins
end

class AccountEmployee < Employee
    attr_accessor :name
    attr_reader :category

    def initialize(name)
        @name = name
        @category = 'Accounts'
    end

    include Mixins

    def to_s
        'Object:' + @name
    end
end

aemp = AccountEmployee.new(name = 'HR')
puts "#{aemp.category} Employee reports to %s" % aemp.reports_to
