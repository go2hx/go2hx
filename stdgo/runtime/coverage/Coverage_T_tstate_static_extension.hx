package stdgo.runtime.coverage;
class T_tstate_static_extension {
    static public function _readAuxMetaFiles(_ts:T_tstate, _metafiles:String, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_T__struct_0.T__struct_0>):stdgo.Error {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate>);
        final _metafiles = (_metafiles : stdgo.GoString);
        final _importpaths = (_importpaths : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_T__struct_0.T__struct_0>);
        return stdgo._internal.runtime.coverage.Coverage_T_tstate_static_extension.T_tstate_static_extension._readAuxMetaFiles(_ts, _metafiles, _importpaths);
    }
    static public function _processPod(_ts:T_tstate, _p:stdgo._internal.internal.coverage.pods.Pods_Pod.Pod, _importpaths:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_T__struct_0.T__struct_0>):stdgo.Error {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate>);
        final _importpaths = (_importpaths : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_T__struct_0.T__struct_0>);
        return stdgo._internal.runtime.coverage.Coverage_T_tstate_static_extension.T_tstate_static_extension._processPod(_ts, _p, _importpaths);
    }
    public static function allocateCounters(__self__:stdgo._internal.runtime.coverage.Coverage_T_tstate.T_tstate, _0:StdTypes.Int):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.coverage.Coverage_T_tstate_static_extension.T_tstate_static_extension.allocateCounters(__self__, _0)) i];
    }
}
