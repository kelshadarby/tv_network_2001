
class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    characters = @shows.map { |show| show.characters }.flatten!
    characters.find_all do |character|
      character.salary > 500000 && character.name == character.name.upcase
    end
  end

  def actors_by_show
    @shows.reduce({}) do |actors_hash, show|
      if actors_hash.has_key?(show)
        actors_hash[show] << show.actors
      else
        actors_hash[show] = show.actors
      end
      actors_hash
    end
  end

  def shows_by_actor
    actors = @shows.map { |show| show.actors }.flatten!

    actors.reduce({}) do |shows_hash, actor|
      if actors.any?{ |actor| actor == actor } && shows_hash.has_key?(show.actors)
        shows_hash[actor] << show
      elsif actors.any?{ |actor| actor == actor } == actor
        shows_hash[actor] = [show]
      end
      shows_hash
    end
  end


end
