class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    # def characters
    #     Character.all
    # end
    # def network
    #     self.network.find()
    # end
    # def actors_list
        
    # end

  def actors_list
    self.actors.map do |actor|
      actor.full_name
    end
  end
end