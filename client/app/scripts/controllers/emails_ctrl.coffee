app.classy.controller
  name: 'EmailsCtrl'
  inject: ['$scope', '$routeParams', 'Email']
  init: ->
    @$.app =
      email: @Email.show(@$routeParams.token, @$routeParams.email_id)
