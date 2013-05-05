var __extends = this.__extends || function (d, b) {
    function __() { this.constructor = d; }
    __.prototype = b.prototype;
    d.prototype = new __();
};
var Vehicles;
(function (Vehicles) {
    (function (OceanGoing) {
        var Boat = (function () {
            function Boat(length, name) {
                this.length = length;
                this.name = name;
            }
            Boat.prototype.travel = function (distance) {
                this.distanceTraveled += distance;
            };
            return Boat;
        })();
        OceanGoing.Boat = Boat;        
        var Yatch = (function (_super) {
            __extends(Yatch, _super);
            function Yatch() {
                _super.apply(this, arguments);

            }
            Yatch.prototype.setCapacity = function (passengers) {
                this.capacity = passengers;
            };
            return Yatch;
        })(Boat);
        OceanGoing.Yatch = Yatch;        
    })(Vehicles.OceanGoing || (Vehicles.OceanGoing = {}));
    var OceanGoing = Vehicles.OceanGoing;
})(Vehicles || (Vehicles = {}));
var ssMinow = new Vehicles.OceanGoing.Yatch(50, "Minow");
console.log(ssMinow.capacity);
ssMinow.setCapacity(7);
console.log(ssMinow.capacity);
//@ sourceMappingURL=Complete.Boat.js.map
