package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _skipUint32(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        if (((_off + (4 : stdgo.GoInt) : stdgo.GoInt) > (_msg.length) : Bool)) {
            return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errBaseLen._errBaseLen };
        };
        return { _0 : (_off + (4 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
