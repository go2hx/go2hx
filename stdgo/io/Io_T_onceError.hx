package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_onceError_static_extension) abstract T_onceError(stdgo._internal.io.Io_T_onceError.T_onceError) from stdgo._internal.io.Io_T_onceError.T_onceError to stdgo._internal.io.Io_T_onceError.T_onceError {
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error) this = new stdgo._internal.io.Io_T_onceError.T_onceError(mutex, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
