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
function _rewriteRequestURL(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _target:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):Void {
        var _targetQuery = ((@:checkr _target ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString);
        (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme = (@:checkr _target ?? throw "null pointer dereference").scheme?.__copy__();
        (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host = (@:checkr _target ?? throw "null pointer dereference").host?.__copy__();
        {
            var __tmp__ = stdgo._internal.net.http.httputil.Httputil__joinURLPath._joinURLPath(_target, (@:checkr _req ?? throw "null pointer dereference").uRL);
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path = @:tmpset0 __tmp__._0?.__copy__();
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawPath = @:tmpset0 __tmp__._1?.__copy__();
        };
        if (((_targetQuery == stdgo.Go.str()) || ((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery == stdgo.Go.str()) : Bool)) {
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = (_targetQuery + (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = ((_targetQuery + ("&" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
