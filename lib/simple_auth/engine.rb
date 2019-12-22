module SimpleAuth
  class Engine < ::Rails::Engine
    isolate_namespace SimpleAuth
    initializer "actualize_auth.load_helpers" do |app|
      ActionController::Base.send :include, SimpleAuth::Engine.helpers
    end
  end
end
