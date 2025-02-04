package stdgo._internal.crypto.ecdh;
class T_nistCurve_asInterface<Point> {
    @:keep
    @:tdfield
    public var _ecdh : (_local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:keep
    @:tdfield
    public var newPublicKey : (_key:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; };
    @:keep
    @:tdfield
    public var _privateKeyToPublicKey : (_key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>) -> stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>;
    @:keep
    @:tdfield
    public var newPrivateKey : (_key:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; };
    @:keep
    @:tdfield
    public var generateKey : (_rand:stdgo._internal.io.Io_reader.Reader) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; };
    @:keep
    @:tdfield
    public var string : () -> stdgo.GoString;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ecdh.Ecdh_t_nistcurvepointer.T_nistCurvePointer<Point>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
