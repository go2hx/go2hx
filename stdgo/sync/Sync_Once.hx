package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.Once_static_extension) abstract Once(stdgo._internal.sync.Sync_Once.Once) from stdgo._internal.sync.Sync_Once.Once to stdgo._internal.sync.Sync_Once.Once {
    public var _done(get, set) : std.UInt;
    function get__done():std.UInt return this._done;
    function set__done(v:std.UInt):std.UInt {
        this._done = (v : stdgo.GoUInt32);
        return v;
    }
    public var _m(get, set) : Mutex;
    function get__m():Mutex return this._m;
    function set__m(v:Mutex):Mutex {
        this._m = v;
        return v;
    }
    public function new(?_done:std.UInt, ?_m:Mutex) this = new stdgo._internal.sync.Sync_Once.Once((_done : stdgo.GoUInt32), _m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
