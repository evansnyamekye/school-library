require './nameable' //call forth a libarary (external in ruby)

class BaseDecorator < Nameable //instance 
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end