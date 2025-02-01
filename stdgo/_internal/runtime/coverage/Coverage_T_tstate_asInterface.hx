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
class T_tstate_asInterface {
    @:keep
    @:tdfield
    public dynamic function _readAuxMetaFiles(_metafiles:stdgo.GoString, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_T__struct_0.T__struct_0>):stdgo.Error return @:_0 __self__.value._readAuxMetaFiles(_metafiles, _importpaths);
    @:keep
    @:tdfield
    public dynamic function _processPod(_p:stdgo._internal.internal.coverage.pods.Pods_Pod.Pod, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_T__struct_0.T__struct_0>):stdgo.Error return @:_0 __self__.value._processPod(_p, _importpaths);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function allocateCounters(_0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt32> return @:_0 __self__.value.allocateCounters(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.coverage.Coverage_T_tstatePointer.T_tstatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
