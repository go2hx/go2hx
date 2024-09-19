package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.ByAge_asInterface) class ByAge_static_extension {
    @:keep
    static public function less( _a:_internal.sort_test.Sort_test_ByAge.ByAge, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:_internal.sort_test.Sort_test_ByAge.ByAge = _a;
        return (_a[(_i : stdgo.GoInt)].age < _a[(_j : stdgo.GoInt)].age : Bool);
    }
    @:keep
    static public function swap( _a:_internal.sort_test.Sort_test_ByAge.ByAge, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:_internal.sort_test.Sort_test_ByAge.ByAge = _a;
        {
            final __tmp__0 = _a[(_j : stdgo.GoInt)];
            final __tmp__1 = _a[(_i : stdgo.GoInt)];
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _a:_internal.sort_test.Sort_test_ByAge.ByAge):stdgo.GoInt {
        @:recv var _a:_internal.sort_test.Sort_test_ByAge.ByAge = _a;
        return (_a.length);
    }
}
