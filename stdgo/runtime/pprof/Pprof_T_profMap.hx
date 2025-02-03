package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profMap_static_extension) abstract T_profMap(stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap) from stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap to stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap {
    public var _hash(get, set) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>;
    function get__hash():stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>> return this._hash;
    function set__hash(v:stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>):stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>> {
        this._hash = (v : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
        return v;
    }
    public var _all(get, set) : T_profMapEntry;
    function get__all():T_profMapEntry return this._all;
    function set__all(v:T_profMapEntry):T_profMapEntry {
        this._all = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        return v;
    }
    public var _last(get, set) : T_profMapEntry;
    function get__last():T_profMapEntry return this._last;
    function set__last(v:T_profMapEntry):T_profMapEntry {
        this._last = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        return v;
    }
    public var _free(get, set) : Array<T_profMapEntry>;
    function get__free():Array<T_profMapEntry> return [for (i in this._free) i];
    function set__free(v:Array<T_profMapEntry>):Array<T_profMapEntry> {
        this._free = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        return v;
    }
    public var _freeStk(get, set) : Array<stdgo.GoUIntptr>;
    function get__freeStk():Array<stdgo.GoUIntptr> return [for (i in this._freeStk) i];
    function set__freeStk(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._freeStk = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?_hash:stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>, ?_all:T_profMapEntry, ?_last:T_profMapEntry, ?_free:Array<T_profMapEntry>, ?_freeStk:Array<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap((_hash : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>), (_all : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>), (_last : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>), ([for (i in _free) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>), ([for (i in _freeStk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
