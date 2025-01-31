package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
class PSSOptions_asInterface {
    @:keep
    @:tdfield
    public dynamic function _saltLength():stdgo.GoInt return @:_0 __self__.value._saltLength();
    @:keep
    @:tdfield
    public dynamic function hashFunc():stdgo._internal.crypto.Crypto_Hash.Hash return @:_0 __self__.value.hashFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.rsa.Rsa_PSSOptionsPointer.PSSOptionsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
