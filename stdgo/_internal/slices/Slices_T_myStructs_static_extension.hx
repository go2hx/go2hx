package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.slices.Slices.T_myStructs_asInterface) class T_myStructs_static_extension {
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.slices.Slices_T_myStructs.T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.slices.Slices_T_myStructs.T_myStructs = _s;
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
    @:tdfield
    static public function less( _s:stdgo._internal.slices.Slices_T_myStructs.T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.slices.Slices_T_myStructs.T_myStructs = _s;
        return ((@:checkr _s[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._n < (@:checkr _s[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._n : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.slices.Slices_T_myStructs.T_myStructs):stdgo.GoInt {
        @:recv var _s:stdgo._internal.slices.Slices_T_myStructs.T_myStructs = _s;
        return (_s.length);
    }
}
