package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:structInit @:using(_internal.flag_test.Flag_test_T_zeroPanicker_static_extension.T_zeroPanicker_static_extension) class T_zeroPanicker {
    public var _dontPanic : Bool = false;
    public var _v : stdgo.GoString = "";
    public function new(?_dontPanic:Bool, ?_v:stdgo.GoString) {
        if (_dontPanic != null) this._dontPanic = _dontPanic;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zeroPanicker(_dontPanic, _v);
    }
}
