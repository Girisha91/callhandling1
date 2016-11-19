app.controller('mainCtrl',['$scope','Restangular',function($scope,Restangular){
		
/* 		
		 // Set the default value of inputType
  $scope.inputType = 'password';
  
  // Hide & show password function
  $scope.hideShowPassword = function(){
    if ($scope.inputType == 'password')
      $scope.inputType = 'text';
    else
      $scope.inputType = 'password';
  };
		
		 */

		 
		
		/* $scope.names=["Admin","Manager","Employee"];
		$scope.shifts=["Morning shift","General shift","Night shift"];
		$scope.dept=["Development","Testing","Production"];
		
		 */
		
		
		/* 
		$scope.Prod3=["Building Server","WG-PRO","Cloud", "Light Firmware App"];
		$scope.comp3=["User Interface","Backend"];
		$scope.country3=["India","Netherlands","Sydney"];
		/* $scope.state3=["Karnataka","Tamil Nadu","Maharastra"]; */
		/*$scope.city3=["Bangalore"];
		$scope.severity3=["Blocker","Major","Normal","Information"]; */
		
		
		
		$scope.data={
			/* "ticketstatusid": "", */
			"prodid": "",
			"compid":"" ,
			"problem": "",
			"feedbackmsg": "",
             
			  "countryid": "",
			 
			  "stateid": "",
			  "cityid": "",
			 "status":"",
			 "contactno":"",
			 "severityid":""
			 
	  
		};
		Restangular.one('getState').get().then(function(response) {
             $scope.data1 = response.data;
			  	
  /*$scope.states = [];
     
      angular.forEach( $scope.data1, function(h) {
        $scope.states.push(h.code);
		 
        
      })*/
}) 
Restangular.one('getTicketProd').get().then(function(response) {
             $scope.data2 = response.data;
			  	
/*  $scope.product = [];
     
      angular.forEach( $scope.data2, function(hname) {
        $scope.product.push(hname.code);
        
      }) */
})
Restangular.one('ticketComps').get().then(function(response) {
             $scope.data3 = response.data;
			  	
 /* $scope.components = [];
     
      angular.forEach( $scope.data3, function(hname) {
        $scope.components.push(hname.code);
        
      }) */
})

Restangular.one('getCountry').get().then(function(response) {
             $scope.data4 = response.data;
			  	
 /* $scope.country = [];
     
      angular.forEach( $scope.data4, function(hname) {
        $scope.country.push(hname.code);
        
      }) */
})
	
	Restangular.one('getCity').get().then(function(response) {
             $scope.data5 = response.data;
			  	
 /* $scope.city = [];
     
      angular.forEach( $scope.data5, function(hname) {
        $scope.city.push(hname.code);
        
      }) */
})

	Restangular.one('getTicketStatus').get().then(function(response) {
             $scope.data6 = response.data;
			  	
 /* $scope.currentstatus = [];
     
      angular.forEach( $scope.data6, function(hname) {
        $scope.currentstatus.push(hname.code);
        
      }) */
})




	Restangular.one('getSeverity').get().then(function(response) {
             $scope.data7 = response.data;
			  	
 /* $scope.severity = [];
     
      angular.forEach( $scope.data1, function(hname) {
        $scope.severity.push(hname.code);
        
      }) */
})







		
  
	
    $scope.RegisterUser=function(){
		 Restangular.all ('createTicket').post($scope.data).then(function(response) {
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