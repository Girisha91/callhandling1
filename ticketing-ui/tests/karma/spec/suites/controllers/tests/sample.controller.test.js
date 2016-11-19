describe('loginController', function() {
  beforeEach(module('app'));

  var $controller;

  beforeEach(inject(function(_$controller_){
    // The injector unwraps the underscores (_) from around the parameter names when matching
    $controller = _$controller_;
  }));

  describe('$scope.user', function() {
    var $scope, controller;

    beforeEach(function() {
      $scope = {};
      controller = $controller('loginController', { $scope: $scope });
    });

    it('janu', function() {

      expect($scope.username).toEqual('janu');
    });


    });

  describe('$scope.pass', function() {
    var $scope, controller;

    beforeEach(function() {
      $scope = {};
      controller = $controller('loginController', { $scope: $scope });
    });

    it('sets the strength to "strong" if the password length is >8 chars', function() {
      $scope.password = 'longerthaneightchars';
      $scope.pass();
      expect($scope.strength).toEqual('strong');
    });

      });
});
