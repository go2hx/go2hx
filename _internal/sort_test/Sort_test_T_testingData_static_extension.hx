package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.T_testingData_asInterface) class T_testingData_static_extension {
    @:keep
    static public function swap( _d:stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData> = _d;
        if ((_d._nswap >= _d._maxswap : Bool)) {
            _d._t.fatalf(("%s: used %d swaps sorting slice of %d" : stdgo.GoString), stdgo.Go.toInterface(_d._desc), stdgo.Go.toInterface(_d._nswap), stdgo.Go.toInterface((_d._data.length)));
        };
        _d._nswap++;
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
    static public function less( _d:stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _d:stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData> = _d;
        _d._ncmp++;
        return (_d._data[(_i : stdgo.GoInt)] < _d._data[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function len( _d:stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData> = _d;
        return (_d._data.length);
    }
}
