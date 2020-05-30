class FindPup::Dog
    attr_accessor :info, :url, :scraped, :name

    @@all =[]

    def initialize(dog_hash)
        dog_hash.each{|key, value| self.send(("#{key}="), value)}
        save
    end 
    def save 
        @@all << self
    end

    def self.create(dogs_array)
        dogs_array.each do |dog_hash|
            self.new(dog_hash)
        end 
    end
    def add_dog_info(attr_hash)
        attr_hash.each do |key, value|
            self.send(("#{key}="), value)
        end 
    end  

    def self.all
        @@all
    end 
end 