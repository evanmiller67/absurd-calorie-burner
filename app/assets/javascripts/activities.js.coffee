app = angular.module("absurdCalorie", ['ngResource'])

app.controller "ActivitesCtrl", ["$scope", "$http", ($scope, $http) ->
  $scope.Math = window.Math
  $scope.sessionVariables = {}
  $scope.stepWizard = "start"

  $scope.addStep = (step) ->
    $scope.stepWizard = step

  $scope.heightInInches = (height) ->
    f = height
    rex = /^(\d+)'(\d+)''$/
    match = rex.exec(f)
    feet = undefined
    inch = undefined
    if match
      feet = parseInt(match[1], 10)
      inch = parseInt(match[2], 10)
    return ((feet * 12) + inch)

  $scope.getResult = () ->
    checkKeys = Object.keys($scope.sessionVariables).length
    return if checkKeys == 0 && checkKeys < 5
    $http.get("/activities/search.json", params: {
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

