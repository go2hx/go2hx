package stdgo._internal.net.http.pprof;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.net.http.pprof.Pprof__profilesupportsdelta._profileSupportsDelta, __tmp__1 = stdgo._internal.net.http.pprof.Pprof__profiledescriptions._profileDescriptions;
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L94"
            stdgo._internal.net.http.Http_handlefunc.handleFunc(("/debug/pprof/" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_index.index);
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L95"
            stdgo._internal.net.http.Http_handlefunc.handleFunc(("/debug/pprof/cmdline" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_cmdline.cmdline);
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L96"
            stdgo._internal.net.http.Http_handlefunc.handleFunc(("/debug/pprof/profile" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_profile.profile);
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L97"
            stdgo._internal.net.http.Http_handlefunc.handleFunc(("/debug/pprof/symbol" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_symbol.symbol);
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L98"
            stdgo._internal.net.http.Http_handlefunc.handleFunc(("/debug/pprof/trace" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_trace_.trace_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
