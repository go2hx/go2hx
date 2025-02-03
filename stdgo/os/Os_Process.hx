package stdgo.os;
@:structInit @:using(stdgo.os.Os.Process_static_extension) abstract Process(stdgo._internal.os.Os_Process.Process) from stdgo._internal.os.Os_Process.Process to stdgo._internal.os.Os_Process.Process {
    public var pid(get, set) : StdTypes.Int;
    function get_pid():StdTypes.Int return this.pid;
    function set_pid(v:StdTypes.Int):StdTypes.Int {
        this.pid = (v : stdgo.GoInt);
        return v;
    }
    public var _handle(get, set) : stdgo.GoUIntptr;
    function get__handle():stdgo.GoUIntptr return this._handle;
    function set__handle(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._handle = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _isdone(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__isdone():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._isdone;
    function set__isdone(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._isdone = v;
        return v;
    }
    public var _sigMu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__sigMu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._sigMu;
    function set__sigMu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._sigMu = v;
        return v;
    }
    public function new(?pid:StdTypes.Int, ?_handle:stdgo.GoUIntptr, ?_isdone:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_sigMu:stdgo._internal.sync.Sync_RWMutex.RWMutex) this = new stdgo._internal.os.Os_Process.Process((pid : stdgo.GoInt), (_handle : stdgo.GoUIntptr), _isdone, _sigMu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
