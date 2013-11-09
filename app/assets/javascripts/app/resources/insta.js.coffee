angular.module('kovaiApp').factory 'Insta', ['$resource', ($resource) ->
  $resource '/instas'
]