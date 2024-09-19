package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:structInit @:using(_internal.flag_test.Flag_test_T_boolFlagVar_static_extension.T_boolFlagVar_static_extension) class T_boolFlagVar {
    public var _count : stdgo.GoInt = 0;
    public function new(?_count:stdgo.GoInt) {
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_boolFlagVar(_count);
    }
}
