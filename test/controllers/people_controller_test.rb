require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_index_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('People.count') do
      post people_index_url, params: { person: { charactristic: @person.charactristic, name: @person.name } }
    end

    assert_redirected_to person_url(People.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { charactristic: @person.charactristic, name: @person.name } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('People.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_index_url
  end
end
