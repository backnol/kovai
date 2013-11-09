angular.module('kovaiApp').controller 'HomeController', ['$scope', 'Insta', 'Tweet', '$anchorScroll', '$location', ($scope, Insta, Tweet, $anchorScroll, $location) ->
  $scope.instas = Insta.query()
  $scope.tweets = Tweet.query()

  # FIXME: Doesn't always work. It is sometimes offset
  $scope.scrollTo = (id) ->
    $("html, body").animate({ scrollTop: $('#' + id).offset().top + 2 }, 1000);
]