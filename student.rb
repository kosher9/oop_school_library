class Student < Person
  attr_accessor :classroom

  def initialize(name, age, _parent_permission, classroom)
    super(name, age, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
