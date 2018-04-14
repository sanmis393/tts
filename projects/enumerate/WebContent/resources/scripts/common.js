/**
 * 
 */

var app = angular.module("enumerate", []).controller('loginController',
		[ '$scope', '$http', function($scope, $http) {
			$scope.registerUser = function() {
				$http({
					method: 'POST',
					url: 'userRegistraction',
					data: { userRole: 'Admin'},
					headers: {'Content-Type': 'application/x-www-form-urlencoded'}
					}).success(data);
				
				  };
			
			
					/*
			
			
			$scope.registerUser = function() {
			var formData = {
						"userRole" : $scope.userRole,
						"userName" : $scope.userName,
						"password" : $scope.password,	
						"firstName" : $scope.firstName,	
						"lastName" : $scope.lastName,	
						"email" : $scope.email,	
						"phoneNo" : $scope.phoneNo,	
						
				};
				var response = $http.post('userRegistraction', formData).then(function (response) {
				alert(response);
				}, function (response) {
				  alert(response);
				});
				

				$http({
					method : "POST",
					url : "userRegistraction",
					data : {
						userRole : 'SantoshSrivastava',
					},
				}).then(function mySuccess(response) {
					$scope.userRole = response.data;
				}, function myError(response) {
					$scope.userRole = response.statusText;
				});

			}; */

		} ]);
