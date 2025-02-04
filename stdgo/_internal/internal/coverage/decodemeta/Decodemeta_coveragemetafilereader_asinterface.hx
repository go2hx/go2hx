package stdgo._internal.internal.coverage.decodemeta;
class CoverageMetaFileReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function getPackagePayload(_pkIdx:stdgo.GoUInt32, _payloadbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.getPackagePayload(_pkIdx, _payloadbuf);
    @:keep
    @:tdfield
    public dynamic function getPackageDecoder(_pkIdx:stdgo.GoUInt32, _payloadbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value.getPackageDecoder(_pkIdx, _payloadbuf);
    @:keep
    @:tdfield
    public dynamic function fileHash():stdgo.GoArray<stdgo.GoUInt8> return @:_0 __self__.value.fileHash();
    @:keep
    @:tdfield
    public dynamic function counterGranularity():stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity return @:_0 __self__.value.counterGranularity();
    @:keep
    @:tdfield
    public dynamic function counterMode():stdgo._internal.internal.coverage.Coverage_countermode.CounterMode return @:_0 __self__.value.counterMode();
    @:keep
    @:tdfield
    public dynamic function numPackages():stdgo.GoUInt64 return @:_0 __self__.value.numPackages();
    @:keep
    @:tdfield
    public dynamic function _rdUint64():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._rdUint64();
    @:keep
    @:tdfield
    public dynamic function _readFileHeader():stdgo.Error return @:_0 __self__.value._readFileHeader();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereaderpointer.CoverageMetaFileReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
