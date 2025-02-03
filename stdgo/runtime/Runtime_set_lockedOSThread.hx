package stdgo.runtime;
private function set_lockedOSThread(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_lockedOSThread.lockedOSThread = v;
        return v;
    }
