# SimpleJwtAuth
This gem provides simple jwt authorization for rails API projects by giving you access to POST for users and sessions. Aswell as a current_user helper method.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'simple_jwt_auth'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install simple_jwt_auth
```

## Usage
### Models
After installation run 
```bash
$ rails simple_jwt_auth:setup
```
this will create a user model in your rails application. As well as creating a file for adding associations and user model methods at app/models/simple_jwt_auth/user.rb

then run
```bash
$ rails db:migrate
```

In order to have belongs_to associations with user use:
```bash
belongs_to :user, :class_name => 'SimpleJwtAuth::User'
```

### Routes
in order to access gems provided routes add
```bash
mount SimpleJwtAuth::Engine, at: "/auth"
```
to the top of your routes in your rails project
### Creating Users
Users can be created by making a POST request to
https://localhost:3000/auth/users
With name, email, password, and password_confirmation as params

### Creating Sessions
Sessions can be created by making a POST request to
https://localhost:3000/auth/sessions
with email and password as params.

#### Logged in
Add header called "Authorization" and set it to "Bearer #your-jwt-token-here" include this in any request you want the user to be logged in for.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
