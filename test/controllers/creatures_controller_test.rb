require "test_helper"

class CreaturesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @creature = creatures(:one) # 事前に fixtures または factories でデータをセットアップしておく
  end

  test "should get index" do
    get creatures_url
    assert_response :success
    assert_select "title", "Creatures | #{Rails.application.config.app_name}"
  end

  test "should get new" do
    get new_creature_url
    assert_response :success
  end

  test "should create creature" do
    assert_difference('Creature.count', 1) do
      post creatures_url, params: { creature: { name: 'New Creature', description: 'A new creature', periods: 'All year', photo: fixture_file_upload('test/fixtures/files/sample.jpg', 'image/jpeg') } }
    end

    assert_redirected_to creature_url(Creature.last)
  end

  test "should show creature" do
    get creature_url(@creature)
    assert_response :success
  end

  test "should get edit" do
    get edit_creature_url(@creature)
    assert_response :success
  end

  test "should update creature" do
    patch creature_url(@creature), params: { creature: { name: 'Updated Name', description: 'Updated description', periods: 'Seasonal', photo: fixture_file_upload('test/fixtures/files/sample.jpg', 'image/jpeg') } }
    assert_redirected_to creature_url(@creature)
    @creature.reload
    assert_equal 'Updated Name', @creature.name
    assert_equal 'Updated description', @creature.description
    assert_equal 'Seasonal', @creature.periods
  end

  test "should destroy creature" do
    assert_difference('Creature.count', -1) do
      delete creature_url(@creature)
    end

    assert_redirected_to creatures_url
  end
end
