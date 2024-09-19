package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Class__asInterface) class Class__static_extension {
    @:keep
    static public function goString( _c:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_):stdgo.GoString {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_ = _c;
        {
            var __tmp__ = (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__classNames._classNames != null && _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__classNames._classNames.exists(_c) ? { _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__classNames._classNames[_c], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (("dnsmessage." : stdgo.GoString) + _n?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16((_c : stdgo.GoUInt16))?.__copy__();
    }
    @:keep
    static public function string( _c:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_):stdgo.GoString {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_ = _c;
        {
            var __tmp__ = (_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__classNames._classNames != null && _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__classNames._classNames.exists(_c) ? { _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__classNames._classNames[_c], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _n:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _n?.__copy__();
            };
        };
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16((_c : stdgo.GoUInt16))?.__copy__();
    }
}
