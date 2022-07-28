require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(age: 14, name: 'Ced', parent_permission: true)
  end

  describe '#new' do
    it 'returns a new student object' do
      @student.should be_an_instance_of Student
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @student.age.should == 14
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @student.name.should == 'Ced'
    end
  end

  describe '#parent_permission' do
    it 'returns the correct parent_permission' do
      @student.parent_permission.should == true
    end
  end
end
