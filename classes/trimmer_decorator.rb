require_relative 'base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    trimmer_name = @nameable.correct_name[0, 10]
    @nameable.correct_name.length <= 10 ? trimmer_name : @nameable.correct_name
  end
end
