package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Resource_asInterface) class Resource_static_extension {
    @:keep
    static public function _pack( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource> = _r;
        if (_r.body == null) {
            return { _0 : _msg, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errNilResouceBody._errNilResouceBody };
        };
        var _oldMsg = _msg;
        _r.header.type = _r.body._realType();
        var __tmp__ = _r.header._pack(_msg, _compression, _compressionOff), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _msg, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var _preLen = (_msg.length : stdgo.GoInt);
        {
            var __tmp__ = _r.body._pack(_msg, _compression, _compressionOff);
            _msg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _msg, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("content" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        {
            var _err = (_r.header._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                return { _0 : _oldMsg, _1 : _err };
            };
        };
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function goString( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource> = _r;
        return ((((("dnsmessage.Resource{Header: " : stdgo.GoString) + _r.header.goString()?.__copy__() : stdgo.GoString) + (", Body: &" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _r.body.goString()?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
