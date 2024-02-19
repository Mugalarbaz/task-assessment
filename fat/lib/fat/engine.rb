require "fat/engine"

module Fat
  class Engine < ::Rails::Engine
    isolate_namespace Fat
  end
end
