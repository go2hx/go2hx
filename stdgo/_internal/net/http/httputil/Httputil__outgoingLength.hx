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
function _outgoingLength(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoInt64 {
        if ((((@:checkr _req ?? throw "null pointer dereference").body == null) || (stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return (0i64 : stdgo.GoInt64);
        };
        if ((@:checkr _req ?? throw "null pointer dereference").contentLength != ((0i64 : stdgo.GoInt64))) {
            return (@:checkr _req ?? throw "null pointer dereference").contentLength;
        };
        return (-1i64 : stdgo.GoInt64);
    }
