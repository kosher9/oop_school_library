require 'spec_helper'

describe Teacher do
  context 'Test initialization' do
    it 'gets initialize with specialization, age, name, id and parent_permission' do
      specialization = 'Math'
      age = 36
      name = 'Life'
      teacher = Teacher.new(specialization: specialization, age: age, name: name)

      expect(teacher.age).to be age
      expect(teacher.name).to eq 'Life'
      expect(teacher.id).to be > 0
    end

    it 'gets initialize only with data' do
      specialization = 'Math'
      name = 'Ali'
      age = 36
      id = 'abcd'

      teacher = Teacher.new(specialization: specialization, age: age, name: name, id: id)
      expect(teacher.age).to be age
      expect(teacher.name).to eq name
      expect(teacher.id).to eq 'abcd'
    end

    it 'can use service' do
      specialization = 'Math'
      age = 36
      name = 'Ali'
      teacher = Teacher.new(specialization: specialization, age: age, name: name)

      expect(teacher.parent_permission).to be true
    end
  end
end
