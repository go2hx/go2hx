package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackType(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _off), _t:stdgo.GoUInt16 = __tmp__._0, _o:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : (_t : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_), _1 : _o, _2 : _err };
    }
