# README

Differences between cookie auth and localStorage auth:

- [config/initializers/cors.rb](/config/initializers/cors.rb): Add `credentials: true`

- [config/routes.rb](/config/routes.rb): Add a `delete "/sessions"` route

- [app/controllers/sessions_controller.rb](/app/controllers/sessions_controller.rb): Modify `create` action to use cookies, add `destroy` action

- [app/controllers/application_controller.rb](/app/controllers/application_controller.rb): Modify `current_user` method to use cookies

To test requests in HTTPie:

- Send a POST /sessions request with email and password
- Expand the response and copy the `Set-Cookie` value
- In a separate request, add a header with a name of `Cookie` and paste the cookie for the value
