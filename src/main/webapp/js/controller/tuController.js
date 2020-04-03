app.controller('tuController', function ($scope, tuService) {

    $scope.show = function () {
        tuService.findOne().success(
            function (response) {
                $scope.list = response;
            }
        );
    }


});