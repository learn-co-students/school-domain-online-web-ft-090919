class School
    
    attr_accessor :school, :roster, :student
    def initialize(school)
      @school = school
      @@roster = {}
    end
    
    def roster
      @@roster
    end
  
    def add_student(name, grade)
      if  @@roster[grade] == nil
        @@roster[grade] = [name]
      else
       @@roster[grade]<< name
      end
    end
    
    def grade(grade)
      @@roster[grade]
    end
    
    def sort
      school_sort = @@roster.each do |grade, kids| 
        @@roster[grade] = kids.sort 
       end
       school_sort
     end
       
  #      def self.alphabetical
  #  @@all.sort_by(&:name)
    #@@all.sort_by{|song|song.name}
  #end
  
  # describe "#sort" do
   # it 'is able to sort the students' do
    #  @school.add_student("Homer Simpson", 9)
     # @school.add_student("Bart Simpson", 9)
      #@school.add_student("Avi Flombaum", 10)
    #  @school.add_student("Jeff Baird", 10)
    #  @school.add_student("Blake Johnson", 7)
    #  @school.add_student("Jack Bauer", 7)

      # key order does not matter; this is testing that the students in each respective value are in alphabetical order
#      expect(@school.sort).to eq({7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]})
#    end
#  end
#end


  
  


  
  
  
  
end





