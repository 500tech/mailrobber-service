app.classy.controller
  name: 'AppsCtrl'
  inject: ['$scope', '$routeParams', 'Email']
  init: ->
    @$.app =
      emails: @Email.index(@$routeParams.token)
