package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.sort_test.Sort_test_T_testingData_static_extension.T_testingData_static_extension) class T_testingData {
    public var _desc : stdgo.GoString = "";
    public var _t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> = (null : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
    public var _data : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _maxswap : stdgo.GoInt = 0;
    public var _ncmp : stdgo.GoInt = 0;
    public var _nswap : stdgo.GoInt = 0;
    public function new(?_desc:stdgo.GoString, ?_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, ?_data:stdgo.Slice<stdgo.GoInt>, ?_maxswap:stdgo.GoInt, ?_ncmp:stdgo.GoInt, ?_nswap:stdgo.GoInt) {
        if (_desc != null) this._desc = _desc;
        if (_t != null) this._t = _t;
        if (_data != null) this._data = _data;
        if (_maxswap != null) this._maxswap = _maxswap;
        if (_ncmp != null) this._ncmp = _ncmp;
        if (_nswap != null) this._nswap = _nswap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testingData(_desc, _t, _data, _maxswap, _ncmp, _nswap);
    }
}
