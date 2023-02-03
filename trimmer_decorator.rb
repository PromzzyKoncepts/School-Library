# frozen_string_literal: true

require './base_decorator'
class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.size > 10 ? @nameable.correct_name[0..9] : @nameable.correct_name
  end
end
