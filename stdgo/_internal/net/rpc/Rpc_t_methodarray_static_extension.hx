package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_methodArray_asInterface) class T_methodArray_static_extension {
    @:keep
    @:tdfield
    static public function swap( _m:stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _m:stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray = _m;
        {
            final __tmp__0 = _m[(_j : stdgo.GoInt)];
            final __tmp__1 = _m[(_i : stdgo.GoInt)];
            final __tmp__2 = _m;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _m;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _m:stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _m:stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray = _m;
        return (_m[(_i : stdgo.GoInt)].type._method.name < _m[(_j : stdgo.GoInt)].type._method.name : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _m:stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray):stdgo.GoInt {
        @:recv var _m:stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray = _m;
        return (_m.length);
    }
}
