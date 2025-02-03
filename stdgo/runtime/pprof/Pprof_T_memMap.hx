package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_memMap_static_extension) abstract T_memMap(stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap) from stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap to stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap {
    public var _start(get, set) : stdgo.GoUIntptr;
    function get__start():stdgo.GoUIntptr return this._start;
    function set__start(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._start = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _end(get, set) : stdgo.GoUIntptr;
    function get__end():stdgo.GoUIntptr return this._end;
    function set__end(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._end = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _buildID(get, set) : String;
    function get__buildID():String return this._buildID;
    function set__buildID(v:String):String {
        this._buildID = (v : stdgo.GoString);
        return v;
    }
    public var _funcs(get, set) : T_symbolizeFlag;
    function get__funcs():T_symbolizeFlag return this._funcs;
    function set__funcs(v:T_symbolizeFlag):T_symbolizeFlag {
        this._funcs = v;
        return v;
    }
    public var _fake(get, set) : Bool;
    function get__fake():Bool return this._fake;
    function set__fake(v:Bool):Bool {
        this._fake = v;
        return v;
    }
    public function new(?_start:stdgo.GoUIntptr, ?_end:stdgo.GoUIntptr, ?_offset:haxe.UInt64, ?_file:String, ?_buildID:String, ?_funcs:T_symbolizeFlag, ?_fake:Bool) this = new stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap((_start : stdgo.GoUIntptr), (_end : stdgo.GoUIntptr), (_offset : stdgo.GoUInt64), (_file : stdgo.GoString), (_buildID : stdgo.GoString), _funcs, _fake);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
