package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305.T_mac_asInterface) class T_mac_static_extension {
    @:embedded
    public static function write( __self__:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_mac.T_mac, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function sum( __self__:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_mac.T_mac, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>) __self__.sum(_out);
}
