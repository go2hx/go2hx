package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.WaitGroup_static_extension) abstract WaitGroup(stdgo._internal.sync.Sync_WaitGroup.WaitGroup) from stdgo._internal.sync.Sync_WaitGroup.WaitGroup to stdgo._internal.sync.Sync_WaitGroup.WaitGroup {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _state(get, set) : Uint64;
    function get__state():Uint64 return this._state;
    function set__state(v:Uint64):Uint64 {
        this._state = v;
        return v;
    }
    public var _sema(get, set) : std.UInt;
    function get__sema():std.UInt return this._sema;
    function set__sema(v:std.UInt):std.UInt {
        this._sema = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_state:Uint64, ?_sema:std.UInt, ?lock, ?counter:std.UInt) this = new stdgo._internal.sync.Sync_WaitGroup.WaitGroup(_noCopy, _state, (_sema : stdgo.GoUInt32), lock, (counter : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
