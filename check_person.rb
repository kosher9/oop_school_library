class CheckPerson
  def self.person_info(app)
    puts 'What is the person\'s id?'
    app.people.each_with_index do |person, index|
      puts "#{index}. [#{person.class}] - Name: #{person.name} ID: #{person.id} Age: #{person.age}"
    end
    id = gets.chomp
    app.all_rentals(id.to_i)
  end
end
