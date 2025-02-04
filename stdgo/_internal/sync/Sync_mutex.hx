package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_mutex_static_extension.Mutex_static_extension) class Mutex {
    public var _state : stdgo.GoInt32 = 0;
    public var _sema : stdgo.GoUInt32 = 0;
    @:local
    var mutex = #if target.threaded new sys.thread.Mutex() #else null #end;
    public function new(?_state:stdgo.GoInt32, ?_sema:stdgo.GoUInt32, ?mutex) {
        if (_state != null) this._state = _state;
        if (_sema != null) this._sema = _sema;
        if (mutex != null) this.mutex = mutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Mutex(_state, _sema, mutex);
    }
}
