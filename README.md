```
bundle install
rails db:create

bundle install
rails g devise_token_auth:install User auth

rails db:migrate

rails db:migrate
```
