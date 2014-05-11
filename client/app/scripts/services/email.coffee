class Service
  constructor: (@Restangular) ->
    @emails = Restangular.all('emails')

  index: (token) ->
    @emails.customGETLIST(token).$object

  show: (token, email_id) ->
    @emails.customGET(token + '/' + email_id).$object

app.service 'Email', ['Restangular', Service]
