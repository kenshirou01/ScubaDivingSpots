require "test_helper"

class SpotTest < ActiveSupport::TestCase
  def setup
    @spot = Spot.new(name: "オールブルー", address: "沖縄県竹富島1-2-3",
                     description: "正解中の海の生き物がいるダイビングスポットです",
                     image: "dummy_image.jpg")
  end

  test "should be valid" do
    assert @spot.valid?
  end
end
