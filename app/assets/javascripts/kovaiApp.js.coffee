kovaiApp = angular.module('kovaiApp', ['ngResource', 'ngSanitize'])

kovaiApp.factory 'Tweet', ['$resource', ($resource) ->
  $resource '/tweets'
]

kovaiApp.factory 'Insta', ['$resource', ($resource) ->
  $resource '/instas'
]

kovaiApp.controller 'HomeController', ['$scope', 'Insta', 'Tweet', '$anchorScroll', '$location', ($scope, Insta, Tweet, $anchorScroll, $location) ->
  $scope.instas = Insta.query()
  $scope.tweets = Tweet.query()

  # FIXME: Doesn't always work. It is sometimes offset
  $scope.scrollTo = (id) ->
    $location.hash id
    $anchorScroll()
]

kovaiApp.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.otherwise({ templateUrl: '../assets/home.html', controller: 'HomeController' } )
])