<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Products</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <style>
        body { padding-top:50px; }
    </style>

    <!-- JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js">      </script>
<script>
 angular.module('myApp', [])
 .controller('MyController', ['$scope', '$http', function($scope, $http) {
  alert("i am in ctrler");
    $http.get("sony").success(function(data){
    	alert("i having a object");
         $scope.person = data;
    });
 
 }]);
</script>

</head>
<body>
<div class="container" ng-app="myApp" ng-controller="MyController">
<table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td>
            Name
        </td>
        <td>
          price
        </td>
      
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="roll in person">
        <td>{{ roll.pname }}</td>
        <td>{{ roll.price }}</td>
        
      </tr>
    </tbody>
    
  </table>
 <!-- <div class="container" ng-app="sortApp" ng-controller="mainController">
  
  <div class="alert alert-info">
    <p>Sort Type: {{ sortType }}</p>
    <p>Sort Reverse: {{ sortReverse }}</p>
    <p>Search Query: {{ searchProduct }}</p>
  </div>
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>

        <input type="text" class="form-control" placeholder="Search da Fish" ng-model="searchProduct">

      </div>      
    </div>
  </form>
  
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td>
         <a href="#" ng-click="sortType = 'pid'; sortReverse = !sortReverse">
Product Id       
<span ng-show="sortType == 'pid' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'pid' && sortReverse" class="fa fa-caret-up"></span>
      </a>
             
        </td>
        <td>
        <a href="#" ng-click="sortType = 'pname'; sortReverse = !sortReverse">
          Product Name 
        <span ng-show="sortType == 'pname' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'pname' && sortReverse" class="fa fa-caret-up"></span>
        </td>
        <td>
        <a href="#" ng-click="sortType = 'pprice'; sortReverse = !sortReverse">
     Product Price    
      <span ng-show="sortType == 'pprice' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'pprice' && sortReverse" class="fa fa-caret-up"></span>
        </td><td>
        <a href="#" ng-click="sortType = 'cat'; sortReverse = !sortReverse">
     Category    
      <span ng-show="sortType == 'cat' && !sortReverse" class="fa fa-caret-down"></span>
        <span ng-show="sortType == 'cat' && sortReverse" class="fa fa-caret-up"></span>
        </td>
        
      </tr>
    </thead>
    
    <tbody>
    <tr ng-repeat="roll in product | orderBy:sortType:sortReverse | filter:searchFish">
        <td>{{ roll.pid }}</td>
        <td>{{ roll.pname }}</td>
        <td>{{ roll.pprice }}</td>
      </tr>
       
      
    </tbody>
    
  </table> -->
  
</div>
</body>
</html>
