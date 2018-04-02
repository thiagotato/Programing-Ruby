require 'generator/exercise_case'

class IsogramCase < Generator::ExerciseCase

  def workload
    indent_lines(
      [
        "input = #{input.inspect}",
        "#{assert} Isogram.isogram?(input), #{failure_message}"
      ], 4
    )
  end

  private

  def failure_message
    %Q("Expected #{expected}, #{reason}")
  end

  def reason
    "'\#{input}' #{is_or_not} an isogram"
  end

  def is_or_not
    expected ? 'is' : 'is not'
  end

end
