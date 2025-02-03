package stdgo.syscall;
private function set_forkLock(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        stdgo._internal.syscall.Syscall_forkLock.forkLock = v;
        return v;
    }
