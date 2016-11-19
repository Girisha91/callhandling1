angular.module('app', [])
.controller('loginController', function PasswordController($scope) {
  $scope.username = 'janu';
  $scope.password = '';
  $scope.pass = function() {
    var size = $scope.password.length;
    if (size > 8) {
      $scope.strength = 'strong';
    } else if (size > 3) {
      $scope.strength = 'medium';
    } else {
      $scope.strength = 'weak';
    }
  };
});
