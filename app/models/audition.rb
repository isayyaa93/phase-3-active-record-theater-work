class Audition < ActiveRecord::Base
  belongs_to :role

#   def role #role returns an instance of role associated with this audition
#     Role.where(role_id: self.id)
#   end
    def call_back #will change the the hired attribute to true
        self.update(hired: true)
    end


end

