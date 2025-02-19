package stdgo._internal.crypto.aes;
class T_testBlock_asInterface {
    @:keep
    @:tdfield
    public dynamic function newCTR(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream return @:_0 __self__.value.newCTR(_0);
    @:keep
    @:tdfield
    public dynamic function newCBCDecrypter(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode return @:_0 __self__.value.newCBCDecrypter(_0);
    @:keep
    @:tdfield
    public dynamic function newCBCEncrypter(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode return @:_0 __self__.value.newCBCEncrypter(_0);
    @:keep
    @:tdfield
    public dynamic function newGCM(_0:stdgo.GoInt, _1:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return @:_0 __self__.value.newGCM(_0, _1);
    @:keep
    @:tdfield
    public dynamic function decrypt(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.decrypt(_a, _b);
    @:keep
    @:tdfield
    public dynamic function encrypt(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.encrypt(_a, _b);
    @:keep
    @:tdfield
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.aes.Aes_t_testblockpointer.T_testBlockPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
