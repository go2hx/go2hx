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
function trace_(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(@:check2r _r.formValue(("seconds" : stdgo.GoString))?.__copy__(), (64 : stdgo.GoInt)), _sec:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_sec <= (0 : stdgo.GoFloat64) : Bool) || (_err != null) : Bool)) {
            _sec = (1 : stdgo.GoFloat64);
        };
        if (stdgo._internal.net.http.pprof.Pprof__durationExceedsWriteTimeout._durationExceedsWriteTimeout(_r, _sec)) {
            stdgo._internal.net.http.pprof.Pprof__serveError._serveError(_w, (400 : stdgo.GoInt), ("profile duration exceeds server\'s WriteTimeout" : stdgo.GoString));
            return;
        };
        _w.header().set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
        _w.header().set(("Content-Disposition" : stdgo.GoString), ("attachment; filename=\"trace\"" : stdgo.GoString));
        {
            var _err = (stdgo._internal.runtime.trace_.Trace__start.start(_w) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.net.http.pprof.Pprof__serveError._serveError(_w, (500 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(("Could not enable tracing: %s" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__());
                return;
            };
        };
        stdgo._internal.net.http.pprof.Pprof__sleep._sleep(_r, ((_sec * ((1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo._internal.time.Time_Duration.Duration));
        stdgo._internal.runtime.trace_.Trace__stop.stop();
    }
