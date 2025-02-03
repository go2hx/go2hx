package stdgo.runtime;
private function set_dlog(v:() -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger>):() -> stdgo.Ref<stdgo._internal.runtime.Runtime_T_dlogger.T_dlogger> {
        stdgo._internal.runtime.Runtime_dlog.dlog = v;
        return v;
    }
