class Person
  attr_reader :name, :age, :parent_permission
  attr_accessor :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_service?
    is_of_age? || @parent_permission
  end
end
