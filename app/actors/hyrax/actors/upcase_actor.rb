module Hyrax
  module Actors
    class UpcaseActor < AbstractActor
      def create(env)
        env.attributes["title"].first.upcase!
        next_actor.create(env)
      end
    end
  end
end
