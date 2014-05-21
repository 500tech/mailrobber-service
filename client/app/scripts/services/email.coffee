class Service
  constructor: (@Restangular) ->
    @emails = Restangular.all('emails')

  index: (token) ->
    @emails.customGETLIST(token).$object

  show: (token, email_id) ->
    @emails.customGET(token + '/' + email_id).$object

  delete: (token, email_id) ->
    @emails.customPOST({token: token, email_id: email_id}, 'destroy')

app.service 'Email', ['Restangular', Service]
