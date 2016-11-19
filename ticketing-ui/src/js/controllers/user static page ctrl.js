	
	app.controller('myCtrl2',['$scope','Restangular',function($scope,Restangular){
		Restangular.one('tickets').get().then(function(response){
			$scope.wtc1=response.data;
		})
		
	}]);