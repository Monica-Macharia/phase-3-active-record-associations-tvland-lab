class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
      # def full_name
      #   "#{self.first_name} #{self.last_name}" 
      # end
      # def list_roles
      #     # names = self.characters.pluck(:full_name)
      #     # shows = self.show.pluck(:name)
      #     # names << shows
      #     self.characters.map do |character|
      #       "#{character.name} - #{character.show.name}"
      #     end
      #   end

      def full_name
        "#{self.first_name} #{self.last_name}"
      end
    
      def list_roles
        self.characters.map do |character|
          "#{character.name} - #{character.show.name}"
        end
      end
end