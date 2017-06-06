require_relative '../config/environment'
require 'rails/test_help'

require 'minitest-spec-rails'
require 'minispec-metadata'

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...

  # minitest-spec-rails extends MiniTest::Spec::DSL and then includes it into ActiveSupport::TestCase.
  # However, minispec-metadata assumes that MiniTest::Spec::DSL is straight up included into ActiveSupport::TestCase.
  # Therefore, include the overriding methods in MinispecMetadata::It, to make the metadata method available
  include MinispecMetadata::It
end
