package stdgo._internal.slices;
@:keep @:allow(stdgo._internal.slices.Slices.T_myStructs_asInterface) class T_myStructs_static_extension {
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.slices.Slices_t_mystructs.T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.slices.Slices_t_mystructs.T_myStructs = _s;
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
    static public function less( _s:stdgo._internal.slices.Slices_t_mystructs.T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.slices.Slices_t_mystructs.T_myStructs = _s;
        return ((@:checkr _s[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._n < (@:checkr _s[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._n : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.slices.Slices_t_mystructs.T_myStructs):stdgo.GoInt {
        @:recv var _s:stdgo._internal.slices.Slices_t_mystructs.T_myStructs = _s;
        return (_s.length);
    }
}
