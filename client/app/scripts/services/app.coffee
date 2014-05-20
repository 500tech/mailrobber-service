class Service
  constructor: (@Restangular) ->
    @apps = Restangular.all('apps')

  show: (token) ->
    @apps.customGET(token).$object

app.service 'App', ['Restangular', Service]
