require './decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
  end

  def can_use_services
    of_age? || @parent_permission ? true : false
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
