package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_rlocker_asInterface) class T_rlocker_static_extension {
    @:keep
    static public function unlock( _r:stdgo.Ref<stdgo._internal.sync.Sync_T_rlocker.T_rlocker>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.sync.Sync_T_rlocker.T_rlocker> = _r;
        (({
            final e = _r;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        })).runlock();
    }
    @:keep
    static public function lock( _r:stdgo.Ref<stdgo._internal.sync.Sync_T_rlocker.T_rlocker>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.sync.Sync_T_rlocker.T_rlocker> = _r;
        (({
            final e = _r;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        })).rlock();
    }
}