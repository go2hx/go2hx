package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Type__asInterface) class Type__static_extension {
    @:keep
    static public function goString( _t:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_):stdgo.GoString {
        @:recv var _t:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ = _t;
        {
            var __tmp__ = (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__typeNames._typeNames != null && _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__typeNames._typeNames.exists(_t) ? { _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__typeNames._typeNames[_t], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (("dnsmessage." : stdgo.GoString) + _n?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16((_t : stdgo.GoUInt16))?.__copy__();
    }
    @:keep
    static public function string( _t:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_):stdgo.GoString {
        @:recv var _t:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ = _t;
        {
            var __tmp__ = (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__typeNames._typeNames != null && _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__typeNames._typeNames.exists(_t) ? { _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__typeNames._typeNames[_t], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _n?.__copy__();
            };
        };
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16((_t : stdgo.GoUInt16))?.__copy__();
    }
}
