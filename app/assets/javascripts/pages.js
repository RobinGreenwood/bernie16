angular.module('bernieApp', [])
  .controller('LetterController', ['$scope', '$http', function($scope, $http) {

    $scope.text = "We all have different tastes. But this is something I think we can agree on. Look at Bernie's loyalty, and see why I think this is important.";
    $scope.getter = "";
    $scope.sender = "";
    $scope.sent = false;

    $scope.send = function() {
      console.log("Sending");
      $http.post(
        '/notes',
        {
          text: $scope.text,
          sender_email: $scope.sender,
          receiver_email: $scope.getter
        }
      ).error(function(data, status) {
        console.log("error");
      }).success(function(data, status) {
        $scope.sent = true;
      });
    };
  }]);
