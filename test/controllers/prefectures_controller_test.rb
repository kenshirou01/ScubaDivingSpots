require "test_helper"

class PrefecturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prefecture = Prefecture.create(name: "Tokyo")
    @spot = Spot.create(name: "Tokyo Diving Spot", address: "Tokyo Address", description: "A great spot", prefecture: @prefecture)
  end

  test "should show prefecture and its spots" do
    get prefecture_url(@prefecture)

    assert_response :success

    assert_equal @prefecture, assigns(:prefecture)

    assert_includes assigns(:spots), @spot

    assert_select "h1", "#{@prefecture.name} スポット一覧"
    assert_select "div.spot-item" do
      assert_select "h2 a", @spot.name
      assert_select "p.spot-description", /住所: #{@spot.address}/
      assert_select "p.spot-description", /説明: #{@spot.description}/
    end
  end
end
