package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
class T_cbcEncrypter_asInterface {
    @:keep
    @:tdfield
    public dynamic function setIV(_iv:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.setIV(_iv);
    @:keep
    @:tdfield
    public dynamic function cryptBlocks(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.cryptBlocks(_dst, _src);
    @:keep
    @:tdfield
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypterPointer.T_cbcEncrypterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
