package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateMsg_asInterface) class T_certificateMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg> = _m;
        if (((_data.length) < (7 : stdgo.GoInt) : Bool)) {
            return false;
        };
        (@:checkr _m ?? throw "null pointer dereference")._raw = _data;
        var _certsLen = ((((_data[(4 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_data[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_data[(6 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        if ((_data.length : stdgo.GoUInt32) != ((_certsLen + (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
            return false;
        };
        var _numCerts = (0 : stdgo.GoInt);
        var _d = (_data.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        while ((_certsLen > (0u32 : stdgo.GoUInt32) : Bool)) {
            if (((_d.length) < (4 : stdgo.GoInt) : Bool)) {
                return false;
            };
            var _certLen = ((((_d[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_d[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_d[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            if (((_d.length : stdgo.GoUInt32) < ((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32) : Bool)) {
                return false;
            };
            _d = (_d.__slice__(((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
            _certsLen = (_certsLen - (((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _numCerts++;
        };
        (@:checkr _m ?? throw "null pointer dereference")._certificates = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_numCerts : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _d = (_data.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _numCerts : Bool)) {
                var _certLen = ((((_d[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_d[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_d[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
(@:checkr _m ?? throw "null pointer dereference")._certificates[(_i : stdgo.GoInt)] = (_d.__slice__((3 : stdgo.GoInt), ((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
_d = (_d.__slice__(((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__65 => _slice in (@:checkr _m ?? throw "null pointer dereference")._certificates) {
            _i = (_i + ((_slice.length)) : stdgo.GoInt);
        };
        var _length = (((3 : stdgo.GoInt) + ((3 : stdgo.GoInt) * ((@:checkr _m ?? throw "null pointer dereference")._certificates.length) : stdgo.GoInt) : stdgo.GoInt) + _i : stdgo.GoInt);
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + _length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (11 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        var _certificateOctets = (_length - (3 : stdgo.GoInt) : stdgo.GoInt);
        _x[(4 : stdgo.GoInt)] = ((_certificateOctets >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(5 : stdgo.GoInt)] = ((_certificateOctets >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(6 : stdgo.GoInt)] = (_certificateOctets : stdgo.GoUInt8);
        var _y = (_x.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (__66 => _slice in (@:checkr _m ?? throw "null pointer dereference")._certificates) {
            _y[(0 : stdgo.GoInt)] = (((_slice.length) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(1 : stdgo.GoInt)] = (((_slice.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(2 : stdgo.GoInt)] = (_slice.length : stdgo.GoUInt8);
            (_y.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_slice);
            _y = (_y.__slice__(((3 : stdgo.GoInt) + (_slice.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _m ?? throw "null pointer dereference")._raw = _x;
        return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
    }
}
