package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.RWMutex_static_extension) abstract RWMutex(stdgo._internal.sync.Sync_RWMutex.RWMutex) from stdgo._internal.sync.Sync_RWMutex.RWMutex to stdgo._internal.sync.Sync_RWMutex.RWMutex {
    public var _w(get, set) : Mutex;
    function get__w():Mutex return this._w;
    function set__w(v:Mutex):Mutex {
        this._w = v;
        return v;
    }
    public var _writerSem(get, set) : std.UInt;
    function get__writerSem():std.UInt return this._writerSem;
    function set__writerSem(v:std.UInt):std.UInt {
        this._writerSem = (v : stdgo.GoUInt32);
        return v;
    }
    public var _readerSem(get, set) : std.UInt;
    function get__readerSem():std.UInt return this._readerSem;
    function set__readerSem(v:std.UInt):std.UInt {
        this._readerSem = (v : stdgo.GoUInt32);
        return v;
    }
    public var _readerCount(get, set) : Int32;
    function get__readerCount():Int32 return this._readerCount;
    function set__readerCount(v:Int32):Int32 {
        this._readerCount = v;
        return v;
    }
    public var _readerWait(get, set) : Int32;
    function get__readerWait():Int32 return this._readerWait;
    function set__readerWait(v:Int32):Int32 {
        this._readerWait = v;
        return v;
    }
    public function new(?_w:Mutex, ?_writerSem:std.UInt, ?_readerSem:std.UInt, ?_readerCount:Int32, ?_readerWait:Int32, ?mutex) this = new stdgo._internal.sync.Sync_RWMutex.RWMutex(_w, (_writerSem : stdgo.GoUInt32), (_readerSem : stdgo.GoUInt32), _readerCount, _readerWait, mutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
