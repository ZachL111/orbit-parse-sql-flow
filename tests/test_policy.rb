require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = OrbitParseSqlFlow::Signal.new(demand: 60, capacity: 94, latency: 14, risk: 13, weight: 5)
    assert_equal 127, OrbitParseSqlFlow.score(signal_case_1)
    assert_equal 'review', OrbitParseSqlFlow.classify(signal_case_1)
    signal_case_2 = OrbitParseSqlFlow::Signal.new(demand: 65, capacity: 75, latency: 20, risk: 13, weight: 7)
    assert_equal 108, OrbitParseSqlFlow.score(signal_case_2)
    assert_equal 'review', OrbitParseSqlFlow.classify(signal_case_2)
    signal_case_3 = OrbitParseSqlFlow::Signal.new(demand: 99, capacity: 89, latency: 26, risk: 22, weight: 6)
    assert_equal 123, OrbitParseSqlFlow.score(signal_case_3)
    assert_equal 'review', OrbitParseSqlFlow.classify(signal_case_3)
  end
end
