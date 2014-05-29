class Service
  constructor: (@Restangular) ->
    @feedbacks = Restangular.all('feedbacks')

  create: (feedback) ->
    @feedbacks.customPOST(feedback, 'create')

app.service 'Feedback', ['Restangular', Service]
