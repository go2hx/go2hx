package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.UnknownResource_asInterface) class UnknownResource_static_extension {
    @:keep
    static public function goString( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource> = _r;
        return (((((("dnsmessage.UnknownResource{Type: " : stdgo.GoString) + _r.type.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Data: []byte{" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printByteSlice._printByteSlice(_r.data)?.__copy__() : stdgo.GoString) + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _pack( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource> = _r;
        return { _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__packBytes._packBytes(_msg, (_r.data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _realType( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource>):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource> = _r;
        return _r.type;
    }
}
