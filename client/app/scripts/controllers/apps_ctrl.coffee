app.classy.controller
  name: 'AppsCtrl'
  inject: ['$scope', '$routeParams', '$cookieStore', '$window', 'App', 'Email']
  init: ->
    @$.app =
      data:   @App.show(@$routeParams.token)
      emails: @Email.index(@$routeParams.token)

    @$.currentTime = @$window.Date()
    @$.lastTimeEntered = @$cookieStore.get('lastTimeEntered') || @$.currentTime
    @$cookieStore.put('lastTimeEntered', @$.currentTime)

  toDate: (date)->
    d = new Date(date)
    d.toString()
