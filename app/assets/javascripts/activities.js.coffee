app = angular.module("absurdCalorie", ['ngResource'])

app.factory "Exercise", ($resource) ->
  $resource("/activities/search", {index: {method: "GET" }} )

app.controller "ActivitesCtrl", [
  "$scope"
  "Exercise"
  ($scope, Exercise) ->
    $scope.exercises = Exercise.query()

]

