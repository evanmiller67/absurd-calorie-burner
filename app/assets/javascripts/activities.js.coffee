app = angular.module("absurdCalorie", ['ngResource'])

app.controller "ActivitesCtrl", ["$scope", "$http", ($scope, $http) ->
  $scope.Math = window.Math
  $scope.sessionVariables = {}
  $scope.stepWizard = "start"

  $scope.addStep = (step) ->
    if step == 'reload'
      $scope.sessionVariables = {}
      $scope.stepWizard = 'step_1'
    else
      $scope.stepWizard = step

  $scope.heightInInches = (feet, inches) ->
    return ((parseInt(feet) * 12) + parseInt(inches))

  $scope.getRandomInt = (min, max) ->
    Math.floor(Math.random() * (max - min + 1)) + min

  $scope.getResult = () ->
    checkKeys = Object.keys($scope.sessionVariables).length
    return if checkKeys == 0 && checkKeys < 5
    $http.get("/activities/search.json", params: {
        calories: $scope.sessionVariables.calories,
        gender: $scope.sessionVariables.gender,
        height: $scope.heightInInches($scope.sessionVariables.feet, $scope.sessionVariables.inches),
        weight: $scope.sessionVariables.weight,
        age: $scope.sessionVariables.age
      }
    ).success((data) ->
      $scope.exercise = data

  ).error (data) ->

]

