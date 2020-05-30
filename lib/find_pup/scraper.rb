class FindPup::Scraper
    def self.scrape_large_dog
        doc = Nokogiri::HTML(open('https://www.yourpurebredpuppy.com/dogbreeds/index-large-dog-breeds.html'))
        list_dogs = doc.css("table.breeds td")
        dogs = []

        list_dogs.each do |doggo|
            dog = {}
            dog[:name]= doggo.text.strip.gsub('\n', ' ')
            dog[:url]= doggo.css("a").attribute('href').value
            dogs << dog
        end 
        dogs
    end 

    def self.scrape_dog_page(dog_url)
        doc = Nokogiri::HTML(open(dog_url))
        description = {}

        doc.css("div.article2").each do |item|
            description[:info] = item.text.strip
        end 
        description
    end 
    



end