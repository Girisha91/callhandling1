		app.controller("SevCtrl",['$scope','Restangular',function($scope,Restangular){
				$scope.data = {
				"code":"",
				"description":"",
				"status":""
				};
		
/* 	
 $scope.pYW=function() {
    var x = document.getElementById("radio").value;
    document.getElementById("demo").innerHTML = x;
}


	
 $scope.xZE=function() {
    var x = document.getElementById("radio").value;
    document.getElementById("demo").innerHTML = X;
	
	
} */
		$scope.rolerply=function(){
			
			Restangular.all('createSeverity').post($scope.data).then(function(response){
			$scope.result = response.data;
                 if ( $scope.result.status=="true"){
			 alert('Success');
			 }
		else{
		    alert('failure');
		}
		});

		}
}]);