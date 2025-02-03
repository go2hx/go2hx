package stdgo.os;
private function set_kill(v:Signal):Signal {
        stdgo._internal.os.Os_kill.kill = v;
        return v;
    }
