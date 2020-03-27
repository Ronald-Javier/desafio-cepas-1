require 'test_helper'

class ProjectsWorkersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get projects_workers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get projects_workers_destroy_url
    assert_response :success
  end

end
