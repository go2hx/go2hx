package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.T_adversaryTestingData_asInterface) class T_adversaryTestingData_static_extension {
    @:keep
    static public function swap( _d:stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData> = _d;
        {
            final __tmp__0 = _d._data[(_j : stdgo.GoInt)];
            final __tmp__1 = _d._data[(_i : stdgo.GoInt)];
            final __tmp__2 = _d._data;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _d._data;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _d:stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _d:stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData> = _d;
        if ((_d._ncmp >= _d._maxcmp : Bool)) {
            _d._t.fatalf(("used %d comparisons sorting adversary data with size %d" : stdgo.GoString), stdgo.Go.toInterface(_d._ncmp), stdgo.Go.toInterface((_d._data.length)));
        };
        _d._ncmp++;
        if (((_d._data[(_i : stdgo.GoInt)] == _d._gas) && (_d._data[(_j : stdgo.GoInt)] == _d._gas) : Bool)) {
            if (_i == (_d._candidate)) {
                _d._data[(_i : stdgo.GoInt)] = _d._nsolid;
                _d._nsolid++;
            } else {
                _d._data[(_j : stdgo.GoInt)] = _d._nsolid;
                _d._nsolid++;
            };
        };
        if (_d._data[(_i : stdgo.GoInt)] == (_d._gas)) {
            _d._candidate = _i;
        } else if (_d._data[(_j : stdgo.GoInt)] == (_d._gas)) {
            _d._candidate = _j;
        };
        return (_d._data[(_i : stdgo.GoInt)] < _d._data[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function len( _d:stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData> = _d;
        return (_d._data.length);
    }
}
