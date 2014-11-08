app = angular.module("absurdCalorie", ['ngResource'])

app.controller "ActivitesCtrl", ["$scope", ($scope) ->
  $scope.sessionVariables = null



  $scope.getResult = () ->
    $http.get("/activities/search", params: {
        calories: sessionVariables.calories,
        gender: sessionVariables.gender,
        height: sessionVariables.height,
        weight: sessionVariables.weight,
        age: sessionVariables.age
      }
    ).success((data) ->
      $scope.exercise = data
  ).error (data) ->


]

