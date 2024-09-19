package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep class ResourceBody_static_extension {
    static public function goString(t:ResourceBody):stdgo.GoString return t.goString();
    static public function _realType(t:ResourceBody):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ return t._realType();
    static public function _pack(t:ResourceBody, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t._pack(_msg, _compression, _compressionOff);
}
