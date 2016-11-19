	
	app.controller('myCtrl15',['$scope','Restangular',function($scope,Restangular){
		Restangular.one('getTicketHistory').get().then(function(response){
			$scope.wtc1=response.data;
		})
		
	}]);