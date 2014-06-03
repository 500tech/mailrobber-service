app.classy.controller
  name: 'EmailsCtrl'
  inject: ['$scope', '$sce', '$location', '$routeParams', 'App', 'Email']
  init: ->
    @$.app =
      data:   @App.show(@$routeParams.token)
      email: @Email.show(@$routeParams.token, @$routeParams.email_id)

  deleteEmail: ->
    @Email.delete(@$routeParams.token, @$routeParams.email_id).then =>
      @$location.path(@$.app.data.token)

  unescapedHtml: (html) ->
    @$sce.trustAsHtml(html)
