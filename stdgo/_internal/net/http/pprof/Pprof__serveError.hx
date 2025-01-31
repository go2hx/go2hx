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
function _serveError(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _status:stdgo.GoInt, _txt:stdgo.GoString):Void {
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        _w.header().set(("X-Go-Pprof" : stdgo.GoString), ("1" : stdgo.GoString));
        _w.header().del(("Content-Disposition" : stdgo.GoString));
        _w.writeHeader(_status);
        stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, stdgo.Go.toInterface(_txt));
    }
