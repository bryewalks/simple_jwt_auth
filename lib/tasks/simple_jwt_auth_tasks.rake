require_dependency "tty-file"

desc "Copy migrations from simple_jwt_auth to application and create model/user.rb file in application"
namespace :simple_jwt_auth do
  task :setup do
    Rake::Task["simple_jwt_auth_engine:install:migrations"].invoke
    TTY::File.create_file "app/models/user.rb" do
      <<~CONFIG_MODELS
          require File.expand_path('../../app/models/user', SimpleJwtAuth::Engine.called_from)

          class User
          end
      CONFIG_MODELS
    end
  end
end

