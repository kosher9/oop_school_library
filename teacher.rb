class Teacher < Person
  attr_accessor :specialization

  def initialize(name, age, _parent_permission, specialization)
    super(name, age, parent_permission: true)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
