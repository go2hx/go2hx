package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit class Planet {
    public var _name : stdgo.GoString = "";
    public var _mass : _internal.sort_test.Sort_test_T_earthMass.T_earthMass = ((0 : stdgo.GoFloat64) : _internal.sort_test.Sort_test_T_earthMass.T_earthMass);
    public var _distance : _internal.sort_test.Sort_test_T_au.T_au = ((0 : stdgo.GoFloat64) : _internal.sort_test.Sort_test_T_au.T_au);
    public function new(?_name:stdgo.GoString, ?_mass:_internal.sort_test.Sort_test_T_earthMass.T_earthMass, ?_distance:_internal.sort_test.Sort_test_T_au.T_au) {
        if (_name != null) this._name = _name;
        if (_mass != null) this._mass = _mass;
        if (_distance != null) this._distance = _distance;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Planet(_name, _mass, _distance);
    }
}
