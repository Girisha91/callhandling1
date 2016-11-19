		app.controller("MyTicket",['$scope','Restangular',function($scope,Restangular){
				$scope.data = {
				"code":"",
				"description":"",
				"ticketprodid":"",
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
			
			Restangular.all('createTicketComp').post($scope.data).then(function(response){
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