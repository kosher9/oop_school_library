require './person'
class Student < Person
  attr_reader :classroom

  def initialize(age:, name:, parent_permission:, classroom: nil)
    super(age: age, name: name, parent_permission: parent_permission)
    classroom&.add_student(self) unless classroom&.includes?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
