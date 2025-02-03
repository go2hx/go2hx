package stdgo.runtime.pprof;
class T_profMap_static_extension {
    static public function _lookup(_m:T_profMap, _stk:Array<haxe.UInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):T_profMapEntry {
        final _m = (_m : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>);
        final _stk = ([for (i in _stk) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return stdgo._internal.runtime.pprof.Pprof_T_profMap_static_extension.T_profMap_static_extension._lookup(_m, _stk, _tag);
    }
}
