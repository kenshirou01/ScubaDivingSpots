require 'test_helper'

class CreaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creature = creatures(:one)
  end

  test "should get index" do
    get creatures_url
    assert_response :success
    assert_not_nil assigns(:creatures)
  end

  test "should get new" do
    get new_creature_url
    assert_response :success
  end

  test "should create creature" do
    assert_difference('Creature.count') do
      post creatures_url, params: { creature: { name: 'MyString', description: 'MyText', periods: 'MyText', photo: nil } }
    end
    assert_redirected_to creature_url(Creature.last)
  end

  test "should not create invalid creature" do
    assert_no_difference('Creature.count') do
      post creatures_url, params: { creature: { name: '', description: '', periods: '' } }
    end
    assert_response :unprocessable_entity
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
    patch creature_url(@creature), params: { creature: { name: 'Updated Creature', description: 'Updated description', periods: 'July-September' } }
    assert_redirected_to creature_url(@creature)
  end

  test "should not update invalid creature" do
    patch creature_url(@creature), params: { creature: { name: '', description: '', periods: '' } }
    assert_response :unprocessable_entity
  end

  test "should destroy creature" do
    assert_difference('Creature.count', -1) do
      delete creature_url(@creature)
    end
    assert_redirected_to creatures_url
  end

  test "should search creatures" do
    get creature_search_url(query: 'shark')
    assert_response :success
    assert_not_nil assigns(:creatures)
  end
end
