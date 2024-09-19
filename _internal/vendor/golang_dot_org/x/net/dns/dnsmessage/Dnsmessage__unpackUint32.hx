package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackUint32(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        if (((_off + (4 : stdgo.GoInt) : stdgo.GoInt) > (_msg.length) : Bool)) {
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : _off, _2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errBaseLen._errBaseLen };
        };
        var _v = (((((_msg[(_off : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_msg[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_msg[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_msg[(_off + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : _v, _1 : (_off + (4 : stdgo.GoInt) : stdgo.GoInt), _2 : (null : stdgo.Error) };
    }
