class Movie < ActiveRecord::Base
    def Movie.create_with_title (title)
        self.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def Movie.last_movie
        self.last 
    end

    def self.movie_count
        Movie.count
    end

    def Movie.find_movie_with_id(id)
        self.find(id)
    end

    def Movie.find_movie_with_attributes(attr)
        Movie.find_by(attr)
    end

    def Movie.find_movies_after_2002
        self.where("release_date > ?", 2002)
    end

    def update_with_attributes(attr)
        self.update(attr)
    end

    def Movie.update_all_titles(title)
        self.update_all(title: title)
    end

    def Movie.delete_by_id(id)
        Movie.destroy(id)
    end

    def Movie.delete_all_movies
        self.destroy_all
    end
end