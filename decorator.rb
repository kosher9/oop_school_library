class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def initialize(nameable)
    super(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name.upcase
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0..10]
  end
end
