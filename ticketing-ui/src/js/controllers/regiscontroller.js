app.controller('regCtrl',['$scope','Restangular',function($scope,Restangular){
		
		
		 // Set the default value of inputType
  $scope.inputType = 'password';
  
  // Hide & show password function
  $scope.hideShowPassword = function(){
    if ($scope.inputType == 'password')
      $scope.inputType = 'text';
    else
      $scope.inputType = 'password';
  };
		
		
		$scope.data={
			"firstname" :"",
			"middlename": "",
			"lastname":"" ,
			"password": "",
			"email": "",
			"roleid":"",
			"mobile": "", 
			"status": "",
			/* "confirmpassword":"", */
			"username":"",
			"contactnumber":""
			
			 
	  
		};
		

		 
		/* 
		$scope.names=["Admin","Manager","Employee"];
		$scope.shifts=["Morning shift","General shift","Night shift"];
		$scope.dept=["Development","Testing","Production"]; */
		
		
		
		Restangular.one('getRole').get().then(function(response) {
             $scope.rrrr= response.data;
			  	

});

		
		
  
  
  
  
  

  
    $scope.RegisterUser=function(){
		 Restangular.all ('createProfile').post($scope.data).then(function(response) {
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