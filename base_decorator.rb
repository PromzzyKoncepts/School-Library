# frozen_string_literal: true

require './nameable'
class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
