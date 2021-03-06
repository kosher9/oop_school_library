require './person'
class Student < Person
  attr_reader :classroom, :age, :name, :parent_permission, :id

  def initialize(age:, name:, parent_permission:, id: nil, classroom: nil)
    classroom&.add_student(self) unless classroom&.includes?(self)
    @id = id.nil? ? Random.rand(1..1000) : id
    @age = age
    @name = name
    @parent_permission = parent_permission
    @classroom = classroom
    super(id: id, age: age, name: name, parent_permission: parent_permission)
  end

  def to_json(*_args)
    JSON.dump({
                id: @id,
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
