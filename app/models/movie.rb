class Movie < ActiveRecord::Base
    #class method
    #CREATE
    def self.create_with_title(title)
        #AR method that can be called on class
        #will create new record in table
        #matches onto table because of ORM
        new_movie = Movie.create(title: title)
    end

    #READ
    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    #UPDATE
    def update_with_attributes(attributes)
        #title: is the column, title is the arg
        self.update(attributes)
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

end