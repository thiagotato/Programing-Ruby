require "ex48/lexicon.rb"
require "test/unit"

class TestLexicon < Test::Unit::TestCase

  def test_directions()
    assert_equal(Lexicon.new.scan("north"), [['direction', 'north']])
    result = Lexicon.new.scan("north south east")

    assert_equal(result, [['direction', 'north'],
                ['direction', 'south'],
                ['direction', 'east']])
  end

  def test_verbs()
    assert_equal(Lexicon.new.scan("go"), [['verb', 'go']])
    result = Lexicon.new.scan("go kill eat")
    assert_equal(result, [['verb', 'go'],
                ['verb', 'kill'],
                ['verb', 'eat']])
  end

  def test_stops()
    assert_equal(Lexicon.new.scan("the"), [['stop', 'the']])
    result = Lexicon.new.scan("the in of")
    assert_equal(result, [['stop', 'the'],
                ['stop', 'in'],
                ['stop', 'of']])
  end

  def test_nouns()
    assert_equal(Lexicon.new.scan("bear"), [['noun', 'bear']])
    result = Lexicon.new.scan("bear princess")
    assert_equal(result, [['noun', 'bear'],
                ['noun', 'princess']])
  end

  def test_numbers()
    assert_equal(Lexicon.new.scan("1234"), [['number', 1234]])
    result = Lexicon.new.scan("3 91234")
    assert_equal(result, [['number', 3],
                ['number', 91234]])
  end

  def test_errors()
    assert_equal(Lexicon.new.scan("ASDFADFASDF"), [['error', 'ASDFADFASDF']])
    result = Lexicon.new.scan("bear IAS princess")
    assert_equal(result, [['noun', 'bear'],
                ['error', 'IAS'],
                ['noun', 'princess']])
  end
 
end