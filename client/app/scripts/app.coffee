'use strict'

@app = angular.module('mailRobber', [
  'classy'
  'ngCookies'
  'ngResource'
  'restangular'
  'ngSanitize'
  'ngRoute'
])

.config (RestangularProvider) ->
  RestangularProvider.setBaseUrl('http://localhost:3000/api')

.config ($routeProvider, $locationProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/main.html',
      controller: 'MainCtrl'
    .when '/about',
      templateUrl: 'views/about.html'
    .when '/terms',
      templateUrl: 'views/terms.html'
    .when '/feedback',
      templateUrl: 'views/feedback.html'
      controller: 'FeedbackCtrl'
    .when '/:token',
      templateUrl: 'views/app.html',
      controller: 'AppsCtrl'
    .when '/:token/:email_id',
      templateUrl: 'views/email/text.html',
      controller: 'EmailsCtrl'
    .when '/:token/:email_id/html',
      templateUrl: 'views/email/html.html',
      controller: 'EmailsCtrl'
    .otherwise
      redirectTo: '/'
