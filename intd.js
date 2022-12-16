var app = angular.module('intApp', []);
app.controller('intctrl', ($scope, $http) => {
    $http.get("INTD.json")
        .then((resp) => {
            $scope.cust = resp.data.IDW.Customer;
            $scope.des = resp.data.IDW.Design;
        });
});
app.filter('color', () => {
    return (x) => {
        if (x == "M") return "blue";
        else if(x=="F") return "pink";
        else return "yellow";
    };
});

app.filter('colorcur', () => {
    return (x) => {
        x = parseFloat(x);
        if (x <= 10000.0) return "green";
        else if (x>10000.0 && x<=20000.0) return "yellow";
        else return "red";
    };
});