require './person'
class Student < Person
  attr_reader :classroom, :age, :name, :parent_permission, :classroom

  def initialize(age:, name:, parent_permission:, classroom: nil)
    super(age: age, name: name, parent_permission: parent_permission)
    classroom&.add_student(self) unless classroom&.includes?(self)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @classroom = classroom
  end

  def to_json(*_args)
    JSON.dump({
                age: @age,
                name: @name,
                parent_permission: @parent_permission,
                classroom: @classroom
              })
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
