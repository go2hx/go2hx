package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.sort_test.Sort_test_T_adversaryTestingData_static_extension.T_adversaryTestingData_static_extension) class T_adversaryTestingData {
    public var _t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> = (null : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
    public var _data : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _maxcmp : stdgo.GoInt = 0;
    public var _ncmp : stdgo.GoInt = 0;
    public var _nsolid : stdgo.GoInt = 0;
    public var _candidate : stdgo.GoInt = 0;
    public var _gas : stdgo.GoInt = 0;
    public function new(?_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, ?_data:stdgo.Slice<stdgo.GoInt>, ?_maxcmp:stdgo.GoInt, ?_ncmp:stdgo.GoInt, ?_nsolid:stdgo.GoInt, ?_candidate:stdgo.GoInt, ?_gas:stdgo.GoInt) {
        if (_t != null) this._t = _t;
        if (_data != null) this._data = _data;
        if (_maxcmp != null) this._maxcmp = _maxcmp;
        if (_ncmp != null) this._ncmp = _ncmp;
        if (_nsolid != null) this._nsolid = _nsolid;
        if (_candidate != null) this._candidate = _candidate;
        if (_gas != null) this._gas = _gas;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_adversaryTestingData(_t, _data, _maxcmp, _ncmp, _nsolid, _candidate, _gas);
    }
}
