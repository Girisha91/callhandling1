app.controller('loginCtrl',['$scope', '$state','Restangular','$rootScope',function($scope, $state,Restangular,$rootScope){
$scope.data={ 
       "username":"",
       "password":""
    };
	
	 
	


$scope.submit=function(){
     Restangular.all ('login').post($scope.data).then(function(response) {
		 $rootScope.login=true;
             $scope.result = response.data;
			 
			  
			 if(response.status=="success"){
			 alert('Welcome');
			 }
		else{
		    alert('failure');
		} 
			 
			 $rootScope.id1=[];
			  angular.forEach( $scope.result, function(logi) {
                 $rootScope.id1.push(logi.employeeid);
				   })
				   
				   $rootScope.use=[];
			  angular.forEach( $scope.result, function(user) {
                 $rootScope.use.push(user.username);
				   }) 
				   
				   
				 $rootScope.role=[];
			  angular.forEach( $scope.result, function(logrole) {
		 
                 $rootScope.role.push(logrole.roleid);
	
			 
			 })
if($rootScope.role ==1&&response.status=="success"){
	 $state.go('configgg');
}
 else if($rootScope.role ==2&&response.status=="success"){
	 $state.go('configgg1');
}

	 else if($rootScope.role ==4&&response.status=="success"){
	 $state.go('configgg2');
}
 else if($rootScope.role ==3&&response.status=="success"){
	 $state.go('configgg3');
}


else{
	$state.go('');
		
}		 
			 
		
		
			
			
    
})
}	
}]);	