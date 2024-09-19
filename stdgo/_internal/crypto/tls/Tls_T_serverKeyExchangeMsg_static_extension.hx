package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverKeyExchangeMsg_asInterface) class T_serverKeyExchangeMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg> = _m;
        _m._raw = _data;
        if (((_data.length) < (4 : stdgo.GoInt) : Bool)) {
            return false;
        };
        _m._key = (_data.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return true;
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _length = (_m._key.length : stdgo.GoInt);
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((_length + (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (12 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        stdgo.Go.copySlice((_x.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _m._key);
        _m._raw = _x;
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
}
