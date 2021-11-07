require 'minitest/autorun'
require_relative '../lib/janken'

class JankenTest < Minitest::Test
  # 0: グー, 1: チョキ, 2: パー
  def test_play
    janken = Janken.new
    actual = janken.play(0, 1)
    assert_equal('勝利', actual)
  end
end
