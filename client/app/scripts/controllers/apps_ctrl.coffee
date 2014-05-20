app.classy.controller
  name: 'AppsCtrl'
  inject: ['$scope', '$routeParams', 'App', 'Email']
  init: ->
    @$.app =
      data:   @App.show(@$routeParams.token)
      emails: @Email.index(@$routeParams.token)
