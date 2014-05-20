app.classy.controller
  name: 'EmailsCtrl'
  inject: ['$scope', '$routeParams', 'App', 'Email']
  init: ->
    @$.app =
      data:   @App.show(@$routeParams.token)
      email: @Email.show(@$routeParams.token, @$routeParams.email_id)

  deleteEmail: ->
    @Email.delete(@$routeParams.token, @$routeParams.email_id)
