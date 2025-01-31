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
function _upgradeType(_h:stdgo._internal.net.http.Http_Header.Header):stdgo.GoString {
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("Upgrade" : stdgo.GoString))) {
            return stdgo.Go.str()?.__copy__();
        };
        return _h.get(("Upgrade" : stdgo.GoString))?.__copy__();
    }
