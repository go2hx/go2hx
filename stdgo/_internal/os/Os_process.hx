package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_process_static_extension.Process_static_extension) class Process {
    public var pid : stdgo.GoInt = 0;
    public var _handle : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _isdone : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _sigMu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public function new(?pid:stdgo.GoInt, ?_handle:stdgo.GoUIntptr, ?_isdone:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_sigMu:stdgo._internal.sync.Sync_rwmutex.RWMutex) {
        if (pid != null) this.pid = pid;
        if (_handle != null) this._handle = _handle;
        if (_isdone != null) this._isdone = _isdone;
        if (_sigMu != null) this._sigMu = _sigMu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Process(pid, _handle, _isdone, _sigMu);
    }
}
