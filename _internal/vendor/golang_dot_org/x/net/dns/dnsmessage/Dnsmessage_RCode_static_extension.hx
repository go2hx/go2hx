package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.RCode_asInterface) class RCode_static_extension {
    @:keep
    static public function goString( _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode):stdgo.GoString {
        @:recv var _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode = _r;
        {
            var __tmp__ = (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__rCodeNames._rCodeNames != null && _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__rCodeNames._rCodeNames.exists(_r) ? { _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__rCodeNames._rCodeNames[_r], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (("dnsmessage." : stdgo.GoString) + _n?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16((_r : stdgo.GoUInt16))?.__copy__();
    }
    @:keep
    static public function string( _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode):stdgo.GoString {
        @:recv var _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode = _r;
        {
            var __tmp__ = (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__rCodeNames._rCodeNames != null && _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__rCodeNames._rCodeNames.exists(_r) ? { _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__rCodeNames._rCodeNames[_r], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _n?.__copy__();
            };
        };
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16((_r : stdgo.GoUInt16))?.__copy__();
    }
}
