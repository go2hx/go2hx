package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.SRVResource_asInterface) class SRVResource_static_extension {
    @:keep
    static public function goString( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource> = _r;
        return (((((((((((("dnsmessage.SRVResource{Priority: " : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16(_r.priority)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Weight: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16(_r.weight)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Port: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16(_r.port)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Target: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _r.target.goString()?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _pack( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource> = _r;
        var _oldMsg = _msg;
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _r.priority);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _r.weight);
        _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _r.port);
        var __tmp__ = _r.target._pack(_msg, (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _compressionOff), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _oldMsg, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("SRVResource.Target" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _realType( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource>):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource> = _r;
        return (33 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_);
    }
}
