package stdgo._internal.net.http.pprof;
function handler(_name:stdgo.GoString):stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((_name : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler));
    }
