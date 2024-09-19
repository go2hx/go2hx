package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.Organs_asInterface) class Organs_static_extension {
    @:keep
    static public function swap( _s:_internal.sort_test.Sort_test_Organs.Organs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:_internal.sort_test.Sort_test_Organs.Organs = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            final __tmp__2 = _s;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _s:_internal.sort_test.Sort_test_Organs.Organs):stdgo.GoInt {
        @:recv var _s:_internal.sort_test.Sort_test_Organs.Organs = _s;
        return (_s.length);
    }
}
