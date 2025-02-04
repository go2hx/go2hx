package stdgo._internal.crypto;
class Hash_asInterface {
    @:keep
    @:tdfield
    public dynamic function available():Bool return @:_0 __self__.value.available();
    @:keep
    @:tdfield
    public dynamic function new_():stdgo._internal.hash.Hash_hash.Hash return @:_0 __self__.value.new_();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function hashFunc():stdgo._internal.crypto.Crypto_hash.Hash return @:_0 __self__.value.hashFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.Crypto_hashpointer.HashPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
