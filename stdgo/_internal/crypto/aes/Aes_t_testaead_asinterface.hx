package stdgo._internal.crypto.aes;
class T_testAEAD_asInterface {
    @:keep
    @:tdfield
    public dynamic function inAESPackage():Bool return @:_0 __self__.value.inAESPackage();
    @:keep
    @:tdfield
    public dynamic function open(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_a, _b, _c, _d);
    @:keep
    @:tdfield
    public dynamic function seal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.seal(_a, _b, _c, _d);
    @:keep
    @:tdfield
    public dynamic function overhead():stdgo.GoInt return @:_0 __self__.value.overhead();
    @:keep
    @:tdfield
    public dynamic function nonceSize():stdgo.GoInt return @:_0 __self__.value.nonceSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.aes.Aes_t_testaeadpointer.T_testAEADPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
