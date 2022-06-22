require './person'
class Teacher < Person
  attr_reader :specialization, :age, :name, :parent_permission

  def initialize(specialization:, age:, name:, parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @specialization = specialization
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_service?
    true
  end

  def to_json(*_args)
    JSON.dump({
                age: @age,
                specialization: @specialization,
                name: @name,
                parent_permission: @parent_permission,
                classroom: @classroom
              })
  end
end
