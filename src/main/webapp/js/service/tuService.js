app.service('tuService',function($http){
    this.findOne=function(id){
        return $http.get('../brand/findOne.do?id='+id);
    }

});