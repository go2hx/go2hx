package stdgo._internal.compress.bzip2;
class T_bitReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:keep
    @:tdfield
    public dynamic function readBit():Bool return @:_0 __self__.value.readBit();
    @:keep
    @:tdfield
    public dynamic function readBits(_bits:stdgo.GoUInt):stdgo.GoInt return @:_0 __self__.value.readBits(_bits);
    @:keep
    @:tdfield
    public dynamic function readBits64(_bits:stdgo.GoUInt):stdgo.GoUInt64 return @:_0 __self__.value.readBits64(_bits);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.bzip2.Bzip2_t_bitreaderpointer.T_bitReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
