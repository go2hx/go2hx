package stdgo.time;
private function set_interrupt(v:() -> Void):() -> Void {
        stdgo._internal.time.Time_interrupt.interrupt = v;
        return v;
    }
