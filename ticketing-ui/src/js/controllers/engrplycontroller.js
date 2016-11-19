

app.controller('mainctrl1',['$scope','Restangular',function($scope,Restangular){
	
	$scope.names=["Blocker","Major","Normal","Information"];
	$scope.abc=["Accepted","Inprogress","Rejected","Resolved"];
	
	$scope.data={
		"ticketid":"",
		"status":"",
		"description":""
		
		
		
		
	};
	Restangular.one('getTicketStatus').get().then(function(response) {
             $scope.data1 = response.data;
			  	
 $scope.status = [];
     
      angular.forEach( $scope.data1, function(h) {
        $scope.status.push(h.code);
        
      })
})
	
	$scope.engrply = function(){
		Restangular.all('createTicketHistory').post($scope.data).then(function(response){
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