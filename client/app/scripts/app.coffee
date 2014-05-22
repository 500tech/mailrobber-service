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
  RestangularProvider.setBaseUrl('http://www.mailrobber.com/api')

.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/main.html',
      controller: 'MainCtrl'
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
