'use strict'

@app = angular.module('mailRobber', [
  'ngCookies'
  'ngResource'
  'ngSanitize'
  'ngRoute'
])
.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/main.html',
      controller: 'MainCtrl'
    .otherwise
      redirectTo: '/'
