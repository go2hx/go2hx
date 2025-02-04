package stdgo._internal.internal.coverage.decodemeta;
class CoverageMetaDataDecoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function readFunc(_fidx:stdgo.GoUInt32, _f:stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>):stdgo.Error return @:_0 __self__.value.readFunc(_fidx, _f);
    @:keep
    @:tdfield
    public dynamic function numFuncs():stdgo.GoUInt32 return @:_0 __self__.value.numFuncs();
    @:keep
    @:tdfield
    public dynamic function modulePath():stdgo.GoString return @:_0 __self__.value.modulePath();
    @:keep
    @:tdfield
    public dynamic function packageName():stdgo.GoString return @:_0 __self__.value.packageName();
    @:keep
    @:tdfield
    public dynamic function packagePath():stdgo.GoString return @:_0 __self__.value.packagePath();
    @:keep
    @:tdfield
    public dynamic function _readStringTable():stdgo.Error return @:_0 __self__.value._readStringTable();
    @:keep
    @:tdfield
    public dynamic function _readHeader():stdgo.Error return @:_0 __self__.value._readHeader();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoderpointer.CoverageMetaDataDecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
