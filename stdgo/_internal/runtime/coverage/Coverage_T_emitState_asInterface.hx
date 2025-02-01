package stdgo._internal.runtime.coverage;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.encodemeta.Encodemeta;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.pods.Pods;
import stdgo._internal.internal.coverage.cformat.Cformat;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.time.Time;
import stdgo._internal.internal.coverage.encodecounter.Encodecounter;
import stdgo._internal.internal.coverage.decodemeta.Decodemeta;
import stdgo._internal.internal.coverage.decodecounter.Decodecounter;
import stdgo._internal.encoding.json.Json;
class T_emitState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _emitCounterDataFile(_finalHash:stdgo.GoArray<stdgo.GoUInt8>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return @:_0 __self__.value._emitCounterDataFile(_finalHash, _w);
    @:keep
    @:tdfield
    public dynamic function visitFuncs(_f:stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitorFn.CounterVisitorFn):stdgo.Error return @:_0 __self__.value.visitFuncs(_f);
    @:keep
    @:tdfield
    public dynamic function _needMetaDataFile():Bool return @:_0 __self__.value._needMetaDataFile();
    @:keep
    @:tdfield
    public dynamic function _emitMetaDataFile(_finalHash:stdgo.GoArray<stdgo.GoUInt8>, _tlen:stdgo.GoUInt64):stdgo.Error return @:_0 __self__.value._emitMetaDataFile(_finalHash, _tlen);
    @:keep
    @:tdfield
    public dynamic function _openOutputFiles(_metaHash:stdgo.GoArray<stdgo.GoUInt8>, _metaLen:stdgo.GoUInt64, _which:stdgo._internal.runtime.coverage.Coverage_T_fileType.T_fileType):stdgo.Error return @:_0 __self__.value._openOutputFiles(_metaHash, _metaLen, _which);
    @:keep
    @:tdfield
    public dynamic function _openCounterFile(_metaHash:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._openCounterFile(_metaHash);
    @:keep
    @:tdfield
    public dynamic function _openMetaFile(_metaHash:stdgo.GoArray<stdgo.GoUInt8>, _metaLen:stdgo.GoUInt64):stdgo.Error return @:_0 __self__.value._openMetaFile(_metaHash, _metaLen);
    @:keep
    @:tdfield
    public dynamic function _emitCounterDataToWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return @:_0 __self__.value._emitCounterDataToWriter(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.coverage.Coverage_T_emitStatePointer.T_emitStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
