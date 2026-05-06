require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = OrbitParseSqlFlow::DomainReview.new(signal: 70, slack: 45, drag: 25, confidence: 73)
    assert_equal 183, OrbitParseSqlFlow.domain_review_score(item)
    assert_equal "ship", OrbitParseSqlFlow.domain_review_lane(item)
  end
end
