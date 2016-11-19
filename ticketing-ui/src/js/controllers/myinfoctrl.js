
app.controller('MyInfo',['$scope','Restangular','$rootScope',function($scope,Restangular,$rootScope){
 Restangular.one('getMyProfile/'+$rootScope.use).get().then(function(response){
	
	$scope.ere1=response.data;
}) 
/*$scope.data = [{"employeeid":"123",
                 "name":"chai"
            }] */


}])














