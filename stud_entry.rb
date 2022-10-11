require "./stud_service.rb"
require "./students.rb"

puts "welcome to TiT cllg"
i=1
while i>0
    puts "for adding details press 1"
    puts "for checking student details press 2"
    puts "for deleting details press 3"
    puts "for updating details press 4"
    var=gets.chomp.to_i
    stud=Students.new
    case var
    when 1
        puts "add details"
      
      puts "enter name"
      name = gets
      puts "enter age"
      age = gets.chomp.to_i
      puts "enter roll_no"
      roll_no = gets.chomp.to_i
      puts "enter branch"
      branch=gets

      stud.name=name
      stud.age=age
      stud.roll_no=roll_no
      stud.branch=branch

      obj=Stud_Service.new
      obj.add_details(stud)
     

    when 2
        puts  "view details"
        obj1=Stud_Service.new
        obj1.view_details(stud) 
    
    when 3
        
     puts 'delete Details'
      obj2=Stud_Service.new
      puts "Enter the ID to delete"
      key = gets.chomp.to_i;
      obj2.remove(key)
    #   obj2.add_details(key)
    
     when 4
     puts "update details"  
     obj3=Stud_Service.new
     puts "enter key to update"
     key=gets.chomp.to_i
     
     obj3.update(key)
     end

  
end    
    
      

