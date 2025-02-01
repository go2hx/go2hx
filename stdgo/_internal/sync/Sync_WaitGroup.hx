package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.sync.Sync_WaitGroup_static_extension.WaitGroup_static_extension) class WaitGroup {
    public var _noCopy : stdgo._internal.sync.Sync_T_noCopy.T_noCopy = ({} : stdgo._internal.sync.Sync_T_noCopy.T_noCopy);
    public var _state : _internal.sync.atomic_.Atomic__Uint64.Uint64 = ({} : _internal.sync.atomic_.Atomic__Uint64.Uint64);
    public var _sema : stdgo.GoUInt32 = 0;
    @:local
    var lock = #if target.threaded new sys.thread.Lock() #else null #end;
    var counter : stdgo.GoUInt = 0;
    public function new(?_noCopy:stdgo._internal.sync.Sync_T_noCopy.T_noCopy, ?_state:_internal.sync.atomic_.Atomic__Uint64.Uint64, ?_sema:stdgo.GoUInt32, ?lock, ?counter:stdgo.GoUInt) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_state != null) this._state = _state;
        if (_sema != null) this._sema = _sema;
        if (lock != null) this.lock = lock;
        if (counter != null) this.counter = counter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WaitGroup(_noCopy, _state, _sema, lock, counter);
    }
}
