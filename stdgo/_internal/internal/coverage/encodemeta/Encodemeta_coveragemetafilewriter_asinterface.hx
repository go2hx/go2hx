package stdgo._internal.internal.coverage.encodemeta;
class CoverageMetaFileWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_finalHash:stdgo.GoArray<stdgo.GoUInt8>, _blobs:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _mode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode, _granularity:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):stdgo.Error return @:_0 __self__.value.write(_finalHash, _blobs, _mode, _granularity);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriterpointer.CoverageMetaFileWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
