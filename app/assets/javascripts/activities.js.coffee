app = angular.module("absurdCalorie", ['ngResource'])

app.controller "ActivitesCtrl", ["$scope", ($scope) ->
  $scope.sessionVariables = null



  $scope.getResult = () ->
    $http.get("/activities/search", params: {
        calories: $scope.sessionVariables.calories,
        gender: $scope.sessionVariables.gender,
        height: $scope.sessionVariables.height,
        weight: $scope.sessionVariables.weight,
        age: $scope.sessionVariables.age
      }
    ).success((data) ->
      $scope.exercise = data
  ).error (data) ->


]

