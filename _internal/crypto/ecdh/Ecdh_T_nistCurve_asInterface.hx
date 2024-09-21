package _internal.crypto.ecdh;
class T_nistCurve_asInterface<Point> {
    @:keep
    public var _ecdh : (_local:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:keep
    public var newPublicKey : (_key:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; };
    @:keep
    public var _privateKeyToPublicKey : (_key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>) -> stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>;
    @:keep
    public var newPrivateKey : (_key:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; };
    @:keep
    public var generateKey : (_rand:stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; };
    @:keep
    public var string : () -> stdgo.GoString;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve<Point>>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
