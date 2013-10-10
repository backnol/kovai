kovaiApp = angular.module('kovaiApp', ['ngResource'])

kovaiApp.factory 'Tweet', ['$resource', ($resource) ->
  $resource '/tweets'
]

kovaiApp.factory 'Insta', ['$resource', ($resource) ->
  $resource '/instas'
]

kovaiApp.controller 'TweetsController', ['$scope', 'Tweet', ($scope, Tweet) ->
  $scope.tweets = Tweet.query()
]

kovaiApp.controller 'InstasController', ['$scope', 'Insta', ($scope, Insta) ->
  $scope.instas = Insta.query()
]