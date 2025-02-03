package stdgo.os;
private function set_interrupt(v:Signal):Signal {
        stdgo._internal.os.Os_interrupt.interrupt = v;
        return v;
    }
