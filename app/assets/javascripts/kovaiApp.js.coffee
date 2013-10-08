kovaiApp = angular.module('kovaiApp', ['ngResource'])

kovaiApp.factory 'Tweet', ['$resource', ($resource) ->
  $resource '/tweets'
]
 

kovaiApp.controller 'TweetsController', ['$scope', 'Tweet', ($scope, Tweet) ->
  $scope.tweets = Tweet.query()
]