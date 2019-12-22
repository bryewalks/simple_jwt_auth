module SimpleJwtAuth
  class Engine < ::Rails::Engine
    isolate_namespace SimpleJwtAuth
    initializer "actualize_auth.load_helpers" do |app|
      ActionController::Base.send :include, SimpleJwtAuth::Engine.helpers
    end
  end
end
