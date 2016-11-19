
app.config(['RestangularProvider','$stateProvider','$urlRouterProvider',function(RestangularProvider,$stateProvider,$urlRouterProvider){
	
	
	RestangularProvider.setBaseUrl('http://192.168.43.42:9001/CallHandling/services/rest/api/v1');
	
	      $urlRouterProvider.otherwise("/template")
	
	        $stateProvider
				
				.state('template', {
					url:"/template" ,
					templateUrl:"views/template.html",
					controller:"loginCtrl"
					
					})
					
					
					
					
					.state('configgg', {
					url:"/configgg" ,
					templateUrl:"views/configgg.html",
					controller:"MyInfo"

					})
					
					
					.state('roles1', {
					url:"/roles1" ,
					templateUrl:"views/Partials/roles1.html",
					controller:"myCtrl4"
					})
					
					 .state('product', {
						   url:"/product",
					   templateUrl:"views/Partials/product.html",
					   controller:"MyProd"
				    })
					   
					 .state('Ticket_Comp1', {
						   url:"/Ticket_Comp1",
					   templateUrl:"views/Partials/Ticket_Comp1.html",
					   controller:"MyTicket"
					   })
					   
					   
					    .state('Ticket_status1', {
						   url:"/Ticket_status1",
					   templateUrl:"views/Partials/Ticket_status1.html",
					   controller:"TicketStatus"
					   })
					   
					     .state('severity', {
						   url:"/severity",
					   templateUrl:"views/Partials/severity.html",
					   controller:"SevCtrl"
					   })
					   
					
					   
					   .state('registration',{
						url:"/registration",
						templateUrl:"views/Partials/registration.html",
						controller:"regCtrl"
						})
					
					
					   
					   .state('myinfo', {
						   url:"/myinfo",
					   templateUrl:"views/Partials/myinfo.html",
					   controller:"MyInfo"
					   })
					   
					   
					   
					   
					   .state('ch', {
						   url:"/ch",
					   templateUrl:"views/Partials/ch.html",
                        controller:"changeCtrl"
					   
					   })
					   
					   
					   
					   
					   .state('configgg1', {
					url:"/configgg1" ,
					templateUrl:"views/configgg1.html",
					controller:"MyInfo"
					})
					   
					    .state('Summaryreports', {
						   url:"/Summaryreports",
					   templateUrl:"views/Partials/Summaryreports.html",
					   controller:"myCtrl"
					   })
					    .state('UserHomePage', {
						   url:"/UserHomePage",
					   templateUrl:"views/Partials/UserHomePage.html",
					   controller:"mainCtrl"
					   })
					   
					   
					    .state('engrply static' ,{
					       url:"/engrply static",
						   templateUrl:"views/Partials/engrply static.html",
						   controller:"myCtrl15"
					   })
					   
					   
					    .state('configgg2', {
					url:"/configgg2" ,
					templateUrl:"views/configgg2.html",
					controller:"MyInfo"
					})
					
					.state('user static page' ,{
					       url:"/user static page",
						   templateUrl:"views/Partials/user static page.html",
						   controller:"myCtrl2"
					   })
					   
					
					
					
					  
					  .state('engrply', {
						   url:"/engrply",
					   templateUrl:"views/Partials/SubPartial/engrply.html",
					    controller:"mainctrl1"
					   })
            
            
					   .state('configgg3', {
					url:"/configgg3" ,
					templateUrl:"views/configgg3.html",
					controller:"MyInfo"
					})
					
					   
                       /*.state('Usertracking2', {
						   url:"/Usertracking2",
					   templateUrl:"views/Partials/SubPartials/Usertracking2.html"
					   }) 
					   .state('timesheetnew', {
						   url:"/timesheetnew",
					   templateUrl:"views/Partials/timesheetnew.html"
					   }) 
					   .state('swipedetailsnew', {
						   url:"/swipedeatilsnew",
					   templateUrl:"views/Partials/swipedetailsnew.html"
					   }) 
					   
					   
					   
					   
					   
					   
					   
					    .state('applyleave', {
						   url:"/applyleave",
					   templateUrl:"views/Partials/applyleave.html"
					   })
					  
					   
					   
					   
					    .state('searchholi', {
						   url:"/searchholi",
					   templateUrl:"views/Partials/searchholi.html"
					   })
					   
					   
					   .state('mang1', {
						   url:"/mang1",
					   templateUrl:"views/Partials/mang1.html"
					   })
					   
					    .state('event', {
						   url:"/event",
					   templateUrl:"views/Partials/event.html"
					   }) */
					   
					   
					   
					 
					   
					   
					   
					   
					   

					   
}]);




















						