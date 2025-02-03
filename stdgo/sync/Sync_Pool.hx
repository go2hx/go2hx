package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.Pool_static_extension) abstract Pool(stdgo._internal.sync.Sync_Pool.Pool) from stdgo._internal.sync.Sync_Pool.Pool to stdgo._internal.sync.Sync_Pool.Pool {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _local(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__local():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._local;
    function set__local(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._local = v;
        return v;
    }
    public var _localSize(get, set) : stdgo.GoUIntptr;
    function get__localSize():stdgo.GoUIntptr return this._localSize;
    function set__localSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._localSize = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _victim(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__victim():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._victim;
    function set__victim(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._victim = v;
        return v;
    }
    public var _victimSize(get, set) : stdgo.GoUIntptr;
    function get__victimSize():stdgo.GoUIntptr return this._victimSize;
    function set__victimSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._victimSize = (v : stdgo.GoUIntptr);
        return v;
    }
    public var new_(get, set) : () -> stdgo.AnyInterface;
    function get_new_():() -> stdgo.AnyInterface return () -> this.new_();
    function set_new_(v:() -> stdgo.AnyInterface):() -> stdgo.AnyInterface {
        this.new_ = v;
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_local:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_localSize:stdgo.GoUIntptr, ?_victim:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_victimSize:stdgo.GoUIntptr, ?new_:() -> stdgo.AnyInterface, ?pool) this = new stdgo._internal.sync.Sync_Pool.Pool(_noCopy, _local, (_localSize : stdgo.GoUIntptr), _victim, (_victimSize : stdgo.GoUIntptr), new_, pool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
