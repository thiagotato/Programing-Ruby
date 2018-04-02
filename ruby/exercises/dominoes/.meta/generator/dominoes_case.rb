require 'generator/exercise_case'

class DominoesCase < Generator::ExerciseCase
  def name
    'test_%s' % description.gsub("can't", 'can not').gsub(/[= -]+/, '_')
  end

  def workload
    <<-WL.chomp
input_dominoes = #{input}
    output_chain = Dominoes.chain(input_dominoes)
    #{expected ? 'assert' : 'refute' }_correct_chain(input_dominoes, output_chain)
    WL
  end

end
