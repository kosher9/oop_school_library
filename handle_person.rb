class HandlePerson
  def self.create_student(app)
    puts 'Let\'s create a student!'
    puts 'What is your name?'
    name = gets.chomp
    puts 'What is your age?'
    age = gets.chomp.to_i
    puts 'Has parents permission? (y/n)'
    parent_permission = gets.chomp.downcase == 'y'
    app.create_student(id: nil, age: age, name: name, parent_permission: parent_permission)
    puts 'Student created!'
  end

  def self.create_teacher(app)
    puts 'Let\'s create a teacher!'
    puts 'What is your name?'
    name = gets.chomp
    puts 'What is your age?'
    age = gets.chomp.to_i
    puts 'What is your specialization?'
    specialization = gets.chomp
    app.create_teacher(id: nil, specialization: specialization, age: age, name: name, parent_permission: true)
    puts 'Teacher created!'
  end
end
