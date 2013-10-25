kovaiApp = angular.module('kovaiApp', ['ngResource'])

kovaiApp.factory 'Tweet', ['$resource', ($resource) ->
  $resource '/tweets'
]

kovaiApp.factory 'Insta', ['$resource', ($resource) ->
  $resource '/instas'
]

kovaiApp.controller 'HomeController', ['$scope', 'Insta', 'Tweet', ($scope, Insta, Tweet) ->
  $scope.instas = Insta.query()
  $scope.tweets = Tweet.query()
]

kovaiApp.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.otherwise({ templateUrl: '../assets/home.html', controller: 'HomeController' } )
])