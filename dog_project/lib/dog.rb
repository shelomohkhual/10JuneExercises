class Dog
    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        return @name
    end
    def name=(name)
        @name = name
    end
    def breed
        return @breed
    end
    def age
        return @age
    end
    def age=(age)
        @age = age
    end
    def bark
        if @age <= 3
            @bark.downcase
        else
            @bark.upcase
        end
    end
    def favorite_foods
        return @favorite_foods
    end
    def favorite_food?(string)
        @favorite_foods.to_s.downcase.include?(string.downcase)
    end

end
