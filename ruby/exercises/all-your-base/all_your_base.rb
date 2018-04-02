class BaseConverter
  def convert(input_base, digits, output_base)
    calc = 0

    digits.each do |num|
      spl_num = num.to_s.split('')
      len_digt = spl_num.length

      spl_num.each do |single|
        #puts single
        len_digt -= 1
        calc += single.to_i * output_base ** len_digt
        print single, output_base, len_digt, "\n"
      end
    end
    puts calc
  end
end


a = BaseConverter.new

a.convert(10, [40], 2)
