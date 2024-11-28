package stdgo._internal.encoding.base64;
function _assemble32(_n1:stdgo.GoUInt8, _n2:stdgo.GoUInt8, _n3:stdgo.GoUInt8, _n4:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        var _dn = (0 : stdgo.GoUInt32), _ok = false;
        if ((((_n1 | _n2 : stdgo.GoUInt8) | _n3 : stdgo.GoUInt8) | _n4 : stdgo.GoUInt8) == ((255 : stdgo.GoUInt8))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
                _dn = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : (((((_n1 : stdgo.GoUInt32) << (26i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_n2 : stdgo.GoUInt32) << (20i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_n3 : stdgo.GoUInt32) << (14i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_n4 : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : true };
            _dn = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
