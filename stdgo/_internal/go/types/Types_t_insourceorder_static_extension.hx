package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_inSourceOrder_asInterface) class T_inSourceOrder_static_extension {
    @:keep
    @:tdfield
    static public function swap( _a:stdgo._internal.go.types.Types_t_insourceorder.T_inSourceOrder, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:stdgo._internal.go.types.Types_t_insourceorder.T_inSourceOrder = _a;
        {
            final __tmp__0 = _a[(_j : stdgo.GoInt)];
            final __tmp__1 = _a[(_i : stdgo.GoInt)];
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _a:stdgo._internal.go.types.Types_t_insourceorder.T_inSourceOrder, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:stdgo._internal.go.types.Types_t_insourceorder.T_inSourceOrder = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L701"
        return (_a[(_i : stdgo.GoInt)]._order() < _a[(_j : stdgo.GoInt)]._order() : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _a:stdgo._internal.go.types.Types_t_insourceorder.T_inSourceOrder):stdgo.GoInt {
        @:recv var _a:stdgo._internal.go.types.Types_t_insourceorder.T_inSourceOrder = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L700"
        return (_a.length);
    }
}
