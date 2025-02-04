package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_profmapentry_static_extension.T_profMapEntry_static_extension) class T_profMapEntry {
    public var _nextHash : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
    public var _nextAll : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
    public var _stk : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _tag : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _count : stdgo.GoInt64 = 0;
    public function new(?_nextHash:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>, ?_nextAll:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>, ?_stk:stdgo.Slice<stdgo.GoUIntptr>, ?_tag:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_count:stdgo.GoInt64) {
        if (_nextHash != null) this._nextHash = _nextHash;
        if (_nextAll != null) this._nextAll = _nextAll;
        if (_stk != null) this._stk = _stk;
        if (_tag != null) this._tag = _tag;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_profMapEntry(_nextHash, _nextAll, _stk, _tag, _count);
    }
}
