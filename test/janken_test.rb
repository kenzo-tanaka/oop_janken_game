require 'minitest/autorun'
require_relative '../lib/english_display'
require_relative '../lib/japanese_display'
require_relative '../lib/janken'

class JankenTest < Minitest::Test
  # 0: グー, 1: チョキ, 2: パー

  class JapaneseJanken < self
    def test_win
      display = JapaneseDisplay.new
      janken = Janken.new(display)
      assert_equal('勝利', janken.play(0, 1))
    end

    def test_draw
      display = JapaneseDisplay.new
      janken = Janken.new(display)
      assert_equal('引き分け', janken.play(0, 0))
    end

    def test_lose
      display = JapaneseDisplay.new
      janken = Janken.new(display)
      assert_equal('敗北', janken.play(0, 2))
    end
  end

  class EnglishJanken < self
    def test_win
      display = EnglishDisplay.new
      janken = Janken.new(display)
      assert_equal('Win', janken.play(0, 1))
    end

    def test_draw
      display = EnglishDisplay.new
      janken = Janken.new(display)
      assert_equal('Draw', janken.play(1, 1))
    end

    def test_lose
      display = EnglishDisplay.new
      janken = Janken.new(display)
      assert_equal('Lose', janken.play(0, 2))
    end
  end
end
