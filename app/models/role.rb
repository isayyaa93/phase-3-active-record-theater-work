class Role < ActiveRecord::Base
  has_many :auditions

#   def auditions Role#auditions returns all of the auditions associated with this role
#   end

#Role#actors returns an array of names from the actors associated with this role

    def actors
        
        self.auditions.map do |audition| 
            audition.actor
       end
    end

    def locations # returns an array of locations from the auditions associated with this role
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead # returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
        
            self.auditions.find do |e|
            if e.hired == true
                return self.auditions
            else 
                puts "no actor has been hired for this role"
            end 
            end
            
        # filteredarray = []
        # filteredarray = self.auditions.find do |instance|
        #     instance.hired == true
        # end

        # if (filteredarray.length != 0 && filteredarray.length >0)
        #     return filteredarray.first
            
        # else
        #     return "no actor has been hired for this role."
        # end
end
end