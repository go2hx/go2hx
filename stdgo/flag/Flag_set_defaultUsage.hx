package stdgo.flag;
private function set_defaultUsage(v:() -> Void):() -> Void {
        stdgo._internal.flag.Flag_defaultUsage.defaultUsage = v;
        return v;
    }
