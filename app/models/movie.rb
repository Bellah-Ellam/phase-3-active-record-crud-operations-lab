class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
      Movie.where(year: year)
    end
  
    def self.create(title:, release_date:)
        movie = Movie.new(title: title, release_date: release_date)
        movie.save
        movie
      end
  
    def self.first
      Movie.first
    end
  
    def self.last
      Movie.last
    end
  
    def self.count
      Movie.count
    end
  
    def self.find(id)
      Movie.find(id)
    end
  
    def self.find_by(attributes)
      Movie.find_by(attributes)
    end
  
    def self.released_after(year)
      Movie.where("release_date > ?", year)
    end
  
    def update(title:)
      self.title = title
      save
      self
    end
  
    def self.update_all(title:)
      Movie.update_all(title: title)
    end
  
    def destroy
      super
    end
  
    def self.destroy_all
      Movie.destroy_all
    end
  end
  