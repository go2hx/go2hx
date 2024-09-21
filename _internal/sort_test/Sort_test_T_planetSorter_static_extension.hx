package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.T_planetSorter_asInterface) class T_planetSorter_static_extension {
    @:keep
    static public function less( _s:stdgo.Ref<_internal.sort_test.Sort_test_T_planetSorter.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<_internal.sort_test.Sort_test_T_planetSorter.T_planetSorter> = _s;
        return _s._by((stdgo.Go.setRef(_s._planets[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>), (stdgo.Go.setRef(_s._planets[(_j : stdgo.GoInt)]) : stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>));
    }
    @:keep
    static public function swap( _s:stdgo.Ref<_internal.sort_test.Sort_test_T_planetSorter.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<_internal.sort_test.Sort_test_T_planetSorter.T_planetSorter> = _s;
        {
            final __tmp__0 = _s._planets[(_j : stdgo.GoInt)];
            final __tmp__1 = _s._planets[(_i : stdgo.GoInt)];
            final __tmp__2 = _s._planets;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s._planets;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _s:stdgo.Ref<_internal.sort_test.Sort_test_T_planetSorter.T_planetSorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<_internal.sort_test.Sort_test_T_planetSorter.T_planetSorter> = _s;
        return (_s._planets.length);
    }
}
