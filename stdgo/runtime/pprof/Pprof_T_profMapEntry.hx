package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profMapEntry_static_extension) abstract T_profMapEntry(stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry) from stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry to stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry {
    public var _nextHash(get, set) : T_profMapEntry;
    function get__nextHash():T_profMapEntry return this._nextHash;
    function set__nextHash(v:T_profMapEntry):T_profMapEntry {
        this._nextHash = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        return v;
    }
    public var _nextAll(get, set) : T_profMapEntry;
    function get__nextAll():T_profMapEntry return this._nextAll;
    function set__nextAll(v:T_profMapEntry):T_profMapEntry {
        this._nextAll = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        return v;
    }
    public var _stk(get, set) : Array<stdgo.GoUIntptr>;
    function get__stk():Array<stdgo.GoUIntptr> return [for (i in this._stk) i];
    function set__stk(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._stk = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _tag(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__tag():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._tag;
    function set__tag(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._tag = v;
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_nextHash:T_profMapEntry, ?_nextAll:T_profMapEntry, ?_stk:Array<stdgo.GoUIntptr>, ?_tag:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_count:haxe.Int64) this = new stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry((_nextHash : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>), (_nextAll : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>), ([for (i in _stk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), _tag, (_count : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
