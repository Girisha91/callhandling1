
	app.controller('myCtrl',['$scope','Restangular',function($scope,Restangular){
			Restangular.one('tickets').get().then(function(response){
				$scope.spb1=response.data;
				})
	
	}]);