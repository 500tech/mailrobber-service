app.classy.controller
  name: 'FeedbackCtrl'
  inject: ['$scope', 'Feedback']
  init: ->
    @$.feedback = {}

  sendFeedback: ->
    if @$.feedback.message
      @Feedback.create(@$.feedback).then ( (success) =>
        @$.feedback =
          sent: true
          blank: false
          error: false
      ), (error) =>
        @$.feedback =
          email: @$.feedback.email
          message: @$.feedback.message
          sent: false
          blank: false
          error: true
    else
      @$.feedback =
        sent: false
        blank: true
        error: false
