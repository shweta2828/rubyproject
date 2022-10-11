class Students
    attr_accessor :name, :age, :roll_no ,:branch
    def initialize( k = "a" , a = "0" , r = "0" ,b="s")
        @name = k,
        @age = a,
        @roll_no= r
        @branch=b
    end
end    