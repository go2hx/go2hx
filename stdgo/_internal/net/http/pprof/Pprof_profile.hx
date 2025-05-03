package stdgo._internal.net.http.pprof;
function profile(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L134"
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_r.formValue(("seconds" : stdgo.GoString))?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _sec:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L136"
        if (((_sec <= (0i64 : stdgo.GoInt64) : Bool) || (_err != null) : Bool)) {
            _sec = (30i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L140"
        if (stdgo._internal.net.http.pprof.Pprof__durationexceedswritetimeout._durationExceedsWriteTimeout(_r, (_sec : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L141"
            stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("profile duration exceeds server\'s WriteTimeout" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L142"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L147"
        _w.header().set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L148"
        _w.header().set(("Content-Disposition" : stdgo.GoString), ("attachment; filename=\"profile\"" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L149"
        {
            var _err = (stdgo._internal.runtime.pprof.Pprof_startcpuprofile.startCPUProfile(_w) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L151"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(("Could not enable CPU profiling: %s" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L153"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L155"
        stdgo._internal.net.http.pprof.Pprof__sleep._sleep(_r, ((_sec : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L156"
        stdgo._internal.runtime.pprof.Pprof_stopcpuprofile.stopCPUProfile();
    }
