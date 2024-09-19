package stdgo._internal.net.http.pprof;
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_index.index);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/cmdline" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_cmdline.cmdline);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/profile" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_profile.profile);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/symbol" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_symbol.symbol);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/trace" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_trace_.trace_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
