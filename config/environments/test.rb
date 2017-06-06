Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true

  if Rails::VERSION::MAJOR == 4
    config.active_support.test_order = :random
  end
end
