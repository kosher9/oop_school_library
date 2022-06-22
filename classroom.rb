class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student unless @students.include?(student)
  end

  def to_json(*_args)
    JSON.dump({
                label: @label,
                students: @students,
                parent_permission: @parent_permission,
                classroom: @classroom
              })
  end
end
