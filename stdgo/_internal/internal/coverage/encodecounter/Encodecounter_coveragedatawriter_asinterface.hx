package stdgo._internal.internal.coverage.encodecounter;
class CoverageDataWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeFooter():stdgo.Error return @:_0 __self__.value._writeFooter();
    @:keep
    @:tdfield
    public dynamic function _writeCounters(_visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor, _ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error return @:_0 __self__.value._writeCounters(_visitor, _ws);
    @:keep
    @:tdfield
    public dynamic function _writeBytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeBytes(_b);
    @:keep
    @:tdfield
    public dynamic function _writeHeader(_metaFileHash:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeHeader(_metaFileHash);
    @:keep
    @:tdfield
    public dynamic function appendSegment(_args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor):stdgo.Error return @:_0 __self__.value.appendSegment(_args, _visitor);
    @:keep
    @:tdfield
    public dynamic function _writeSegmentPreamble(_args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error return @:_0 __self__.value._writeSegmentPreamble(_args, _ws);
    @:keep
    @:tdfield
    public dynamic function _patchSegmentHeader(_ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>):stdgo.Error return @:_0 __self__.value._patchSegmentHeader(_ws);
    @:keep
    @:tdfield
    public dynamic function write(_metaFileHash:stdgo.GoArray<stdgo.GoUInt8>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor):stdgo.Error return @:_0 __self__.value.write(_metaFileHash, _args, _visitor);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriterpointer.CoverageDataWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
