require 'minitest/autorun'

class JankenTest < Minitest::Test
  def test_fail
    raise('失敗するはず!')
  end

  def test_success
    assert_equal(true, true)
  end
end
