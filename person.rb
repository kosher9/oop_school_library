require './nameable'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(age:, id: nil, name: 'Unknown', parent_permission: true)
    super()
    @id = id.nil? ? Random.rand(1..1000) : id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def to_json(_args)
    JSON.dump({
                id: @id,
                name: @name,
                age: @age,
                parent_permission: @parent_permission,
                rentals: @rentals
              })
  end

  def add_rental(rental)
    @rentals << rental
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
