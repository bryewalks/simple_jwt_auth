require_dependency "tty-file"

desc "Copy migrations from simple_jwt_auth to application and create model/user.rb file in application"
namespace :simple_jwt_auth do
  task :setup do
    Rake::Task["simple_jwt_auth:install:migrations"].invoke
    TTY::File.create_dir('app/models/simple_jwt_auth/')
    TTY::File.create_file "app/models/simple_jwt_auth/user.rb" do
      <<~CONFIG_MODELS
        require File.expand_path('../../app/models/simple_jwt_auth/user', SimpleJwtAuth::Engine.called_from)

        module SimpleJwtAuth
          class User
            #associations and user model methods here.
          end
        end
      CONFIG_MODELS
    end
  end
end
