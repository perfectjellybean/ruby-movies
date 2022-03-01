class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor:, character_name:, salary:)
        Role.create(character_name: character_name, salary: salary, actor_id: actor.id, movie_id: self.id)
    end

    def all_credits
        roles.map do |role|
            "#{role.character_name}: Played by #{role.actor.name}"
        end
    end

    def fire_actor(actor)
        roles.find_by(actor_id: actor.id).destroy
    end
end