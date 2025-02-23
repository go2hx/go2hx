package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_byIndex_asInterface) class T_byIndex_static_extension {
    @:keep
    @:tdfield
    static public function less( _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex = _x;
        for (_k => _xik in _x[(_i : stdgo.GoInt)]._index) {
            if ((_k >= (_x[(_j : stdgo.GoInt)]._index.length) : Bool)) {
                return false;
            };
            if (_xik != (_x[(_j : stdgo.GoInt)]._index[(_k : stdgo.GoInt)])) {
                return (_xik < _x[(_j : stdgo.GoInt)]._index[(_k : stdgo.GoInt)] : Bool);
            };
        };
        return ((_x[(_i : stdgo.GoInt)]._index.length) < (_x[(_j : stdgo.GoInt)]._index.length) : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)];
            final __tmp__1 = _x[(_i : stdgo.GoInt)];
            final __tmp__2 = _x;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _x;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex):stdgo.GoInt {
        @:recv var _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex = _x;
        return (_x.length);
    }
}
