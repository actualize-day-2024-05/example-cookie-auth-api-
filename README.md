# README

Differences between cookie auth and localStorage auth:

- [config/initializers/cors.rb](/config/initializers/cors.rb): Add `credentials: true`

- [config/routes.rb](/config/routes.rb): Add a `delete "/sessions"` route

- [app/controllers/application_controller.rb](/app/controllers/application_controller.rb): Modify `current_user` method to use cookies

- [app/controllers/sessions_controller.rb](/app/controllers/sessions_controller.rb): Modify `create` action to use cookies, add `destroy` action
