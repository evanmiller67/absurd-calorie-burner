app = angular.module("absurdCalorie", ['ngResource'])

app.controller "ActivitesCtrl", ["$scope", ($scope) ->
  $scope.sessionVariables = {}
  $scope.stepWizard = "step_1"

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

