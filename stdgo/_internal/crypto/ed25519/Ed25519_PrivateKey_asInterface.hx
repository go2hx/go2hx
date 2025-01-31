package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import _internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
class PrivateKey_asInterface {
    @:keep
    @:tdfield
    public dynamic function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _message:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.sign(_rand, _message, _opts);
    @:keep
    @:tdfield
    public dynamic function seed():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.seed();
    @:keep
    @:tdfield
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool return @:_0 __self__.value.equal(_x);
    @:keep
    @:tdfield
    public dynamic function public_():stdgo._internal.crypto.Crypto_PublicKey.PublicKey return @:_0 __self__.value.public_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ed25519.Ed25519_PrivateKeyPointer.PrivateKeyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
