package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_rlocker_asInterface) class T_rlocker_static_extension {
    @:keep
    @:tdfield
    static public function unlock( _r:stdgo.Ref<stdgo._internal.sync.Sync_t_rlocker.T_rlocker>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.sync.Sync_t_rlocker.T_rlocker> = _r;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L244"
        (({
            final e = _r;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo._internal.sync.Sync_rwmutex.RWMutex);
        })).rUnlock();
    }
    @:keep
    @:tdfield
    static public function lock( _r:stdgo.Ref<stdgo._internal.sync.Sync_t_rlocker.T_rlocker>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.sync.Sync_t_rlocker.T_rlocker> = _r;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L243"
        (({
            final e = _r;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo._internal.sync.Sync_rwmutex.RWMutex);
        })).rLock();
    }
}
