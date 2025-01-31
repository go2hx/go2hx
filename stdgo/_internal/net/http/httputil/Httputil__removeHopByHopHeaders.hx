package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
function _removeHopByHopHeaders(_h:stdgo._internal.net.http.Http_Header.Header):Void {
        for (__0 => _f in (_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            for (__1 => _sf in stdgo._internal.strings.Strings_split.split(_f?.__copy__(), ("," : stdgo.GoString))) {
                {
                    _sf = stdgo._internal.net.textproto.Textproto_trimString.trimString(_sf?.__copy__())?.__copy__();
                    if (_sf != (stdgo.Go.str())) {
                        _h.del(_sf?.__copy__());
                    };
                };
            };
        };
        for (__1 => _f in stdgo._internal.net.http.httputil.Httputil__hopHeaders._hopHeaders) {
            _h.del(_f?.__copy__());
        };
    }
