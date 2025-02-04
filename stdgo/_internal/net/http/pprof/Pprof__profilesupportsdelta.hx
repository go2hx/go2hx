package stdgo._internal.net.http.pprof;
var _profileSupportsDelta : stdgo.GoMap<stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler, Bool> = ({
        final x = new stdgo.GoMap.GoStringMap<Bool>();
        x.__defaultValue__ = () -> false;
        x.set((("allocs" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler), true);
x.set((("block" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler), true);
x.set((("goroutine" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler), true);
x.set((("heap" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler), true);
x.set((("mutex" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler), true);
x.set((("threadcreate" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler), true);
        x;
    } : stdgo.GoMap<stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler, Bool>);
