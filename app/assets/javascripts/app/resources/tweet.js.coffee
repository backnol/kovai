angular.module('kovaiApp').factory 'Tweet', ['$resource', ($resource) ->
  $resource '/tweets'
]