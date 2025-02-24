package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_byLiteral_asInterface) class T_byLiteral_static_extension {
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral = _s;
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
    static public function less( _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral = _s;
        return (_s[(_i : stdgo.GoInt)]._literal < _s[(_j : stdgo.GoInt)]._literal : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral):stdgo.GoInt {
        @:recv var _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral = _s;
        return (_s.length);
    }
    @:keep
    @:tdfield
    static public function _sort( _s:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral>, _a:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral> = _s;
        (_s : stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral).__setData__((_a : stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral));
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_s));
    }
}
