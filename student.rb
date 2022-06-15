class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    classroom.add_student(self) unless classroom.includes?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
