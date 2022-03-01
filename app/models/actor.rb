class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        roles.sum{|role| role[:salary]}
    end

    def blockbusters
        self.movies.filter do |movie|
            movie.box_office_earnings > 50000000 && movie
        end
    end

    def self.most_successful
        actor_id = Role.all.order('salary DESC')[0][:actor_id]
        Actor.find(actor_id)
    end
end