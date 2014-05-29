app.classy.controller
  name: 'FeedbackCtrl'
  inject: ['$scope', 'Feedback']
  init: ->
    @$.feedback = {}

  sendFeedback: ->
    @Feedback.create(@$.feedback)
    @$.feedback =
      sent: true
