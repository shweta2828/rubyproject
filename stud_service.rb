class Stud_Service

    @@student_hash = Hash.new
    
    def add_details(stud)
        @@student_hash.each do|k,v|
          if stud.roll_no==v.roll_no
            puts "roll_no already assigned"
          end
        end
          size = @@student_hash.size()
          key = 0
      
            if size == 0
                key = 1
            else
            key = @@student_hash.keys.max + 1
            end  
            @@student_hash.store(key , stud)

    end

    def view_details(stud)
        @@student_hash.each  do |k ,v |
          puts k 
          puts v.name
          puts v.age
          puts v.roll_no
          puts v.branch
          puts "\n"  
        end   
    end


    def remove(key)
      puts "---------delete called -------------"
        puts key
        @@student_hash.delete(key)  
    end
    def update(key)
      puts "enter value you want to update"
      v = @@student_hash[key]
      puts "------------------"   
       

       puts "enter name for updating"
       new_name=gets
       new_age=gets.chomp.to_i
       new_rollno=gets.chomp.to_i
       new_branch=gets
       @@student_hash.each do |key,v|
        v.name=new_name
        v.age=new_age
        v.roll_no=new_rollno
        v.branch=new_branch
       end
       
    end

      # @@student_hash[key[v.age]]= gets.chomp.to_i
      # @@student_hash[key[v.roll_no]]=gets.chomp
      # @@student_hash[key[v.branch]]=gets.chomp
      # @@student_hash.each do |key,v|
      # @@student_hash.transform_values! { |val| @@student_hash[key[v.name]] }
      # @@student_hash.transform_values! { |val| @@student_hash[key[v.age]]}
      # @@student_hash.transform_values! {|val| @@student_hash[key[v.roll_no]]}
      # @@student_hash.transform_values! {|val| @@student_hash[key[v.branch]]}

      # puts @@student_hash
      # end


      
      
     

      

      
end    
    