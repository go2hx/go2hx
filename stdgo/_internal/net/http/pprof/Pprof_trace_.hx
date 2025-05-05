package stdgo._internal.net.http.pprof;
function trace_(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L163"
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_r.formValue(("seconds" : stdgo.GoString))?.__copy__(), (64 : stdgo.GoInt)), _sec:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L165"
        if (((_sec <= (0 : stdgo.GoFloat64) : Bool) || (_err != null) : Bool)) {
            _sec = (1 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L169"
        if (stdgo._internal.net.http.pprof.Pprof__durationexceedswritetimeout._durationExceedsWriteTimeout(_r, _sec)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L170"
            stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("profile duration exceeds server\'s WriteTimeout" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L171"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L176"
        _w.header().set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L177"
        _w.header().set(("Content-Disposition" : stdgo.GoString), ("attachment; filename=\"trace\"" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L178"
        {
            var _err = (_internal.runtime.trace_.Trace__start.start(_w) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L180"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(("Could not enable tracing: %s" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L182"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L184"
        stdgo._internal.net.http.pprof.Pprof__sleep._sleep(_r, ((_sec * ((1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo._internal.time.Time_duration.Duration));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L185"
        _internal.runtime.trace_.Trace__stop.stop();
    }
