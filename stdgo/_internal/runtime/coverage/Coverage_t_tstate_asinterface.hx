package stdgo._internal.runtime.coverage;
class T_tstate_asInterface {
    @:keep
    @:tdfield
    public dynamic function _readAuxMetaFiles(_metafiles:stdgo.GoString, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error return @:_0 __self__.value._readAuxMetaFiles(_metafiles, _importpaths);
    @:keep
    @:tdfield
    public dynamic function _processPod(_p:stdgo._internal.internal.coverage.pods.Pods_pod.Pod, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>):stdgo.Error return @:_0 __self__.value._processPod(_p, _importpaths);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function allocateCounters(_0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt32> return @:_0 __self__.value.allocateCounters(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.coverage.Coverage_t_tstatepointer.T_tstatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
