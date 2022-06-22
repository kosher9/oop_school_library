require './person'
class Teacher < Person
  attr_reader :specialization, :age, :name, :parent_permission, :id

  def initialize(specialization:, age:, name:, id: nil, parent_permission: true)
    @id = id.nil? ? Random.rand(1..1000) : id
    @specialization = specialization
    @age = age
    @name = name
    @parent_permission = parent_permission
    super(id: id, age: age, name: name, parent_permission: parent_permission)
  end

  def can_use_service?
    true
  end

  def to_json(*_args)
    JSON.dump({
                id: @id,
                age: @age,
                specialization: @specialization,
                name: @name,
                parent_permission: @parent_permission,
                classroom: @classroom
              })
  end
end
