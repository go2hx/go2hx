package stdgo._internal.net.http.pprof;
import stdgo._internal.net.http.Http;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.runtime.pprof.Pprof;
import stdgo._internal.runtime.trace_.Trace_;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
import stdgo._internal.internal.profile.Profile;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
import stdgo._internal.html.Html;
import stdgo._internal.context.Context;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.net.http.pprof.Pprof__profileSupportsDelta._profileSupportsDelta, __tmp__1 = stdgo._internal.net.http.pprof.Pprof__profileDescriptions._profileDescriptions;
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_index.index);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/cmdline" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_cmdline.cmdline);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/profile" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_profile.profile);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/symbol" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_symbol.symbol);
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/pprof/trace" : stdgo.GoString), stdgo._internal.net.http.pprof.Pprof_trace_.trace_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
