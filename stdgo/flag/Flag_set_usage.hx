package stdgo.flag;
private function set_usage(v:() -> Void):() -> Void {
        stdgo._internal.flag.Flag_usage.usage = v;
        return v;
    }
