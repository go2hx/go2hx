package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_waitgroup_static_extension.WaitGroup_static_extension) class WaitGroup {
    public var _noCopy : stdgo._internal.sync.Sync_t_nocopy.T_noCopy = ({} : stdgo._internal.sync.Sync_t_nocopy.T_noCopy);
    public var _state : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64);
    public var _sema : stdgo.GoUInt32 = 0;
    @:local
    var lock = #if target.threaded new sys.thread.Lock() #else null #end;
    @:local
    var counter : stdgo.GoUInt = 0;
    @:local
    var mutex = #if target.threaded new sys.thread.Mutex() #else null #end;
    public function new(?_noCopy:stdgo._internal.sync.Sync_t_nocopy.T_noCopy, ?_state:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64, ?_sema:stdgo.GoUInt32, ?lock, ?counter:stdgo.GoUInt, ?mutex) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_state != null) this._state = _state;
        if (_sema != null) this._sema = _sema;
        if (lock != null) this.lock = lock;
        if (counter != null) this.counter = counter;
        if (mutex != null) this.mutex = mutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WaitGroup(_noCopy, _state, _sema, lock, counter, mutex);
    }
}
