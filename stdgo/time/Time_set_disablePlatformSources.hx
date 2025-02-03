package stdgo.time;
private function set_disablePlatformSources(v:() -> (() -> Void)):() -> (() -> Void) {
        stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources = v;
        return v;
    }
