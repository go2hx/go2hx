package stdgo._internal.crypto.aes;
class T_testBlockMode_asInterface {
    @:keep
    @:tdfield
    public dynamic function inAESPackage():Bool return @:_0 __self__.value.inAESPackage();
    @:keep
    @:tdfield
    public dynamic function cryptBlocks(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.cryptBlocks(_a, _b);
    @:keep
    @:tdfield
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.aes.Aes_t_testblockmodepointer.T_testBlockModePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
