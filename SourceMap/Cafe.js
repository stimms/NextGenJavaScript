var __extends = this.__extends || function (d, b) {
    function __() { this.constructor = d; }
    __.prototype = b.prototype;
    d.prototype = new __();
};
var Cafe;
(function (Cafe) {
    var Seating = (function () {
        function Seating() { }
        return Seating;
    })();
    Cafe.Seating = Seating;    
    var Booth = (function (_super) {
        __extends(Booth, _super);
        function Booth() {
                _super.call(this);
            this.capacity = 8;
        }
        return Booth;
    })(Seating);
    Cafe.Booth = Booth;    
    var Table = (function (_super) {
        __extends(Table, _super);
        function Table() {
                _super.call(this);
            this.capacity = 6;
        }
        return Table;
    })(Seating);
    Cafe.Table = Table;    
})(Cafe || (Cafe = {}));
var tableByTheDoor;
tableByTheDoor = new Cafe.Booth();
console.log(tableByTheDoor.capacity);
//@ sourceMappingURL=Cafe.js.map
