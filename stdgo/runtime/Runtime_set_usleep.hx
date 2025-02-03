package stdgo.runtime;
private function set_usleep(v:stdgo.GoUInt32 -> Void):stdgo.GoUInt32 -> Void {
        stdgo._internal.runtime.Runtime_usleep.usleep = v;
        return v;
    }
