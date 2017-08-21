/// <reference path="./angular.min.js"/>

//search for supplier
var app = angular
		.module("app", [])
		.controller(
				'mysController',
				function($scope, $http) {
					$scope.listSupplier = function() {
						$http
								.get(
										'/EcommerceFrontEnd/listsupplierjson')
								.success(function(data) {

									$scope.suppliers = data;
									console.log(data);
									console.log('sup');
								})

					}

				})

// search for category

var app = angular
		.module("catapp", [])
		.controller(
				'mycatController',
				function($scope, $http) {
					$scope.listCategory = function() {
						$http
								.get(
										'/EcommerceFrontEnd/listcatgeoryjson')
								.success(function(data) {

									$scope.categories = data;
									console.log(data);
									console.log('catg');
								})

					}

				})

// search for products

var app = angular
		.module("prodapp", [])
		.controller(
				'myprodController',
				function($scope, $http) {
					$scope.listProduct = function() {
						$http
								.get(
										'/EcommerceFrontEnd/listproductsjson')
								.success(function(data) {


									$scope.products = data;
									console.log(data);
								})

					}

				})
