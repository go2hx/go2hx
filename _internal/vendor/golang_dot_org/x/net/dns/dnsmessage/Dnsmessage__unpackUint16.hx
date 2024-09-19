package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackUint16(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        if (((_off + (2 : stdgo.GoInt) : stdgo.GoInt) > (_msg.length) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt16), _1 : _off, _2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errBaseLen._errBaseLen };
        };
        return { _0 : (((_msg[(_off : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_msg[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16), _1 : (_off + (2 : stdgo.GoInt) : stdgo.GoInt), _2 : (null : stdgo.Error) };
    }
