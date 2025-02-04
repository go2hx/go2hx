package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientKeyExchangeMsg_asInterface) class T_clientKeyExchangeMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._raw = _data;
        if (((_data.length) < (4 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _l = ((((_data[(1 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | (_data[(3 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if (_l != (((_data.length) - (4 : stdgo.GoInt) : stdgo.GoInt))) {
            return false;
        };
        (@:checkr _m ?? throw "null pointer dereference")._ciphertext = (_data.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _length = ((@:checkr _m ?? throw "null pointer dereference")._ciphertext.length : stdgo.GoInt);
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((_length + (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        (_x.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _m ?? throw "null pointer dereference")._ciphertext);
        (@:checkr _m ?? throw "null pointer dereference")._raw = _x;
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
}
