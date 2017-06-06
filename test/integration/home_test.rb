require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest

  def setup
    if metadata[:js]
      puts 'Using Javascript driver'
    else
      puts 'Using Default driver'
    end
  end

  describe 'a visitor without Javascript' do

    it 'can view the homepage' do
      get root_path
      assert_response :success
      assert_select 'p', 'Hello World!'
    end

  end

  describe 'a visitor with Javascript', js: true do

    it 'can view the homepage' do
      get root_path
      assert_response :success
      assert_select 'p', 'Hello World!'
    end

  end

end
