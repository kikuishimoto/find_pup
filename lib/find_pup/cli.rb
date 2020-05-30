
class FindPup::CLI
    def call 
        puts "\nWelcome to Find Pup!\n"
        puts "The app that give you information on all your favorite large dog breeds!"
        make_dogs
        list_dogs
        menu
    end 
    def make_dogs
        dogs_array = FindPup::Scraper.scrape_large_dog
        FindPup::Dog.create(dogs_array)
    end 
    def list_dogs
        #list sizes 
        puts "Chose a large dog to learn more."
        @dogs_list = FindPup::Dog.all
        @dogs_list.each.with_index(1) {|dog, index| 
        puts "#{index}. #{dog.name}"}

      

    end 
    def add_dog_detail(url, index)
        dog = FindPup::Dog.all[index]
        if !dog.scraped
            dog.scraped = true
            dog_info = FindPup::Scraper.scrape_dog_page(url)
            dog.add_dog_info(dog_info)
        end 
    end 

    def menu
        input = nil 
        puts "enter the adjacent number to learn more about the dog! or 'exit' to quit\n"

        
        while input != 'exit'
            input = gets.strip.downcase

            if input.to_i > 0 and input.to_i <= @dogs_list.length
                dog = @dogs_list[input.to_i - 1]
                puts "here is some info on #{dog.name}: "
                add_dog_detail(dog.url, input.to_i - 1)
                puts "\n#{dog.info}"
#enter number show list or to exit
                puts "Enter another dog or enter 'exit' to quit"
            elsif input == 'exit'
                break
            else
                puts 'please check input'
            end 
        end 
    end 

    


end 