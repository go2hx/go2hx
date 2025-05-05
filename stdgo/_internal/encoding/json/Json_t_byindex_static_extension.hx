package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_byIndex_asInterface) class T_byIndex_static_extension {
    @:keep
    @:tdfield
    static public function less( _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex = _x;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1056"
        for (_k => _xik in _x[(_i : stdgo.GoInt)]._index) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1057"
            if ((_k >= (_x[(_j : stdgo.GoInt)]._index.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1058"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1060"
            if (_xik != (_x[(_j : stdgo.GoInt)]._index[(_k : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1061"
                return (_xik < _x[(_j : stdgo.GoInt)]._index[(_k : stdgo.GoInt)] : Bool);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1064"
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
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex):stdgo.GoInt {
        @:recv var _x:stdgo._internal.encoding.json.Json_t_byindex.T_byIndex = _x;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L1051"
        return (_x.length);
    }
}
