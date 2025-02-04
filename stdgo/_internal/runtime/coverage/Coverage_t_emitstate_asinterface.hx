package stdgo._internal.runtime.coverage;
class T_emitState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _emitCounterDataFile(_finalHash:stdgo.GoArray<stdgo.GoUInt8>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value._emitCounterDataFile(_finalHash, _w);
    @:keep
    @:tdfield
    public dynamic function visitFuncs(_f:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitorfn.CounterVisitorFn):stdgo.Error return @:_0 __self__.value.visitFuncs(_f);
    @:keep
    @:tdfield
    public dynamic function _needMetaDataFile():Bool return @:_0 __self__.value._needMetaDataFile();
    @:keep
    @:tdfield
    public dynamic function _emitMetaDataFile(_finalHash:stdgo.GoArray<stdgo.GoUInt8>, _tlen:stdgo.GoUInt64):stdgo.Error return @:_0 __self__.value._emitMetaDataFile(_finalHash, _tlen);
    @:keep
    @:tdfield
    public dynamic function _openOutputFiles(_metaHash:stdgo.GoArray<stdgo.GoUInt8>, _metaLen:stdgo.GoUInt64, _which:stdgo._internal.runtime.coverage.Coverage_t_filetype.T_fileType):stdgo.Error return @:_0 __self__.value._openOutputFiles(_metaHash, _metaLen, _which);
    @:keep
    @:tdfield
    public dynamic function _openCounterFile(_metaHash:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._openCounterFile(_metaHash);
    @:keep
    @:tdfield
    public dynamic function _openMetaFile(_metaHash:stdgo.GoArray<stdgo.GoUInt8>, _metaLen:stdgo.GoUInt64):stdgo.Error return @:_0 __self__.value._openMetaFile(_metaHash, _metaLen);
    @:keep
    @:tdfield
    public dynamic function _emitCounterDataToWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value._emitCounterDataToWriter(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.coverage.Coverage_t_emitstatepointer.T_emitStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
