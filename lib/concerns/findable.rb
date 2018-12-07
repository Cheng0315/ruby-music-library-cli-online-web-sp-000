module Concerns
  module Findable
    def find_by_name(name)
      all.find do |song|
        song.name == name
      end
    end

    def find_or_create_by_name(name)
      find_by_name(name) ? self.find_by_name(name) : self.create(name)
    end
  end
end
