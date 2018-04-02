require 'generator/exercise_case'

class AllYourBaseCase < Generator::ExerciseCase

  def workload
    indent_text(4, (assignments + assertion).join("\n"))
  end

  private

  def assignments
      [
        "digits = #{input_digits}",
        "input_base = #{input_base}",
        "output_base = #{output_base}",
      ]
  end

  def assertion
    return error_assertion unless expected_value

    [
      "expected = #{expected_value}",
      "",
      "converted = BaseConverter.convert(input_base, digits, output_base)",
      "",
      "assert_equal expected, converted,",
      indent_text(13, error_message),
    ]
  end

  def error_assertion
    [
      "",
      "assert_raises ArgumentError do",
      "  BaseConverter.convert(input_base, digits, output_base)",
      "end",
    ]
  end

  def error_message
    %q(             "Input base: #{input_base}, output base #{output_base}. " \\) \
      "\n" + %q("Expected #{expected} but got #{converted}.")
  end

  def expected_value
    return expected if expected

    case
    when invalid_input_digits? || invalid_bases? then nil
    when input_digits.empty? then []
    when input_of_zero? then [0]
    else
      handle_special_cases
    end
  end

  def invalid_input_digits?
    input_digits.any? { |x| x < 0 || x >= input_base }
  end

  def invalid_bases?
    input_base <= 1 || output_base <= 1
  end

  def input_of_zero?
    input_digits.all? { |x| x == 0 }
  end

  def handle_special_cases
    [4, 2] if input_digits == [0, 6, 0]
  end
end
