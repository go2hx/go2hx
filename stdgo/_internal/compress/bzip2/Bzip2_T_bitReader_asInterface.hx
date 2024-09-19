package stdgo._internal.compress.bzip2;
class T_bitReader_asInterface {
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function readBit():Bool return __self__.value.readBit();
    @:keep
    public dynamic function readBits(_bits:stdgo.GoUInt):stdgo.GoInt return __self__.value.readBits(_bits);
    @:keep
    public dynamic function readBits64(_bits:stdgo.GoUInt):stdgo.GoUInt64 return __self__.value.readBits64(_bits);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
