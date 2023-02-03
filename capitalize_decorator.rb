# frozen_string_literal: true

require './base_decorator'
require './nameable'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
