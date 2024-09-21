package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.TXTResource_asInterface) class TXTResource_static_extension {
    @:keep
    static public function goString( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource> = _r;
        var _s = ("dnsmessage.TXTResource{TXT: []string{" : stdgo.GoString);
        if ((_r.txt.length) == ((0 : stdgo.GoInt))) {
            return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        _s = (_s + ((("\"" : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printString._printString((_r.txt[(0 : stdgo.GoInt)] : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (__0 => _t in (_r.txt.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            _s = (_s + ((("\", \"" : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printString._printString((_t : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return (_s + ("\"}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _pack( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource> = _r;
        var _oldMsg = _msg;
        for (__0 => _s in _r.txt) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packText._packText(_msg, _s?.__copy__());
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _oldMsg, _1 : _err };
            };
        };
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _realType( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource>):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource> = _r;
        return (16 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_);
    }
}
