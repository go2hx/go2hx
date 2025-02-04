package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension) class RWMutex {
    public var _w : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _writerSem : stdgo.GoUInt32 = 0;
    public var _readerSem : stdgo.GoUInt32 = 0;
    public var _readerCount : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    public var _readerWait : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    @:local
    var mutex = #if target.threaded new sys.thread.Mutex() #else null #end;
    public function new(?_w:stdgo._internal.sync.Sync_mutex.Mutex, ?_writerSem:stdgo.GoUInt32, ?_readerSem:stdgo.GoUInt32, ?_readerCount:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_readerWait:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?mutex) {
        if (_w != null) this._w = _w;
        if (_writerSem != null) this._writerSem = _writerSem;
        if (_readerSem != null) this._readerSem = _readerSem;
        if (_readerCount != null) this._readerCount = _readerCount;
        if (_readerWait != null) this._readerWait = _readerWait;
        if (mutex != null) this.mutex = mutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RWMutex(_w, _writerSem, _readerSem, _readerCount, _readerWait, mutex);
    }
}
