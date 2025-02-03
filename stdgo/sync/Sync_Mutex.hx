package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.Mutex_static_extension) abstract Mutex(stdgo._internal.sync.Sync_Mutex.Mutex) from stdgo._internal.sync.Sync_Mutex.Mutex to stdgo._internal.sync.Sync_Mutex.Mutex {
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt32);
        return v;
    }
    public var _sema(get, set) : std.UInt;
    function get__sema():std.UInt return this._sema;
    function set__sema(v:std.UInt):std.UInt {
        this._sema = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_state:StdTypes.Int, ?_sema:std.UInt, ?mutex) this = new stdgo._internal.sync.Sync_Mutex.Mutex((_state : stdgo.GoInt32), (_sema : stdgo.GoUInt32), mutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
