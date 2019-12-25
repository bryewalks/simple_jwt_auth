module SimpleJwtAuth
  class Engine < ::Rails::Engine
    initializer "simple_jwt_auth.load_helpers" do |app|
      ActionController::Base.send :include, SimpleJwtAuth::Engine.helpers
    end
  end
end
