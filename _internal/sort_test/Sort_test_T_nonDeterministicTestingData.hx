package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.sort_test.Sort_test_T_nonDeterministicTestingData_static_extension.T_nonDeterministicTestingData_static_extension) class T_nonDeterministicTestingData {
    public var _r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
    public function new(?_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nonDeterministicTestingData(_r);
    }
}
