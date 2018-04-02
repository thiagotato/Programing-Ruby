require 'generator/exercise_case'

class SieveCase < Generator::ExerciseCase
  OPEN_ARRAY = "[\n\s\s\s\s\s\s".freeze
  CLOSE_ARRAY = "\n\s\s\s\s]".freeze
  NEW_ARRAY_ROW = ",\n\s\s\s\s\s\s".freeze
  ARRAY_ELEMENTS_PER_ROW = 17.freeze

  def workload
    indent_lines([
      "expected = #{expected_string}",
      "assert_equal expected, Sieve.new(#{limit}).primes"
    ], 4)
  end

  private

  def expected_string
    return expected unless needs_indentation?

    array_rows = expected.each_slice(ARRAY_ELEMENTS_PER_ROW).map { |elements| elements.join(', ') }
    "#{OPEN_ARRAY}#{array_rows.join(NEW_ARRAY_ROW)}#{CLOSE_ARRAY}"
  end

  def needs_indentation?
    expected.size > ARRAY_ELEMENTS_PER_ROW
  end
end
