package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.OPTResource_asInterface) class OPTResource_static_extension {
    @:keep
    static public function goString( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource> = _r;
        var _s = ("dnsmessage.OPTResource{Options: []dnsmessage.Option{" : stdgo.GoString);
        if ((_r.options.length) == ((0 : stdgo.GoInt))) {
            return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        _s = (_s + (_r.options[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
        for (__0 => _o in (_r.options.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option>)) {
            _s = (_s + (((", " : stdgo.GoString) + _o.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _pack( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource> = _r;
        for (__0 => _opt in _r.options) {
            _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _opt.code);
            var _l = (_opt.data.length : stdgo.GoUInt16);
            _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packUint16._packUint16(_msg, _l);
            _msg = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packBytes._packBytes(_msg, _opt.data);
        };
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _realType( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource>):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource> = _r;
        return (41 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_);
    }
}
