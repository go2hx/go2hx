package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
@:structInit class T_floatTest {
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _name : stdgo.GoString = "";
    public var _str : stdgo.GoString = "";
    public function new(?_val:stdgo.AnyInterface, ?_name:stdgo.GoString, ?_str:stdgo.GoString) {
        if (_val != null) this._val = _val;
        if (_name != null) this._name = _name;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_floatTest(_val, _name, _str);
    }
}
