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
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ProxyRequest_asInterface) class ProxyRequest_static_extension {
    @:keep
    @:tdfield
    static public function setXForwarded( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> = _r;
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort((@:checkr (@:checkr _r ?? throw "null pointer dereference").in_ ?? throw "null pointer dereference").remoteAddr?.__copy__()), _clientIP:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err == null) {
            var _prior = ((@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header[("X-Forwarded-For" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_prior.length) > (0 : stdgo.GoInt) : Bool)) {
                _clientIP = ((stdgo._internal.strings.Strings_join.join(_prior, (", " : stdgo.GoString)) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _clientIP?.__copy__() : stdgo.GoString)?.__copy__();
            };
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-For" : stdgo.GoString), _clientIP?.__copy__());
        } else {
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.del(("X-Forwarded-For" : stdgo.GoString));
        };
        (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-Host" : stdgo.GoString), (@:checkr (@:checkr _r ?? throw "null pointer dereference").in_ ?? throw "null pointer dereference").host?.__copy__());
        if (((@:checkr (@:checkr _r ?? throw "null pointer dereference").in_ ?? throw "null pointer dereference").tLS == null || ((@:checkr (@:checkr _r ?? throw "null pointer dereference").in_ ?? throw "null pointer dereference").tLS : Dynamic).__nil__)) {
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-Proto" : stdgo.GoString), ("http" : stdgo.GoString));
        } else {
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-Proto" : stdgo.GoString), ("https" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function setURL( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest>, _target:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> = _r;
        stdgo._internal.net.http.httputil.Httputil__rewriteRequestURL._rewriteRequestURL((@:checkr _r ?? throw "null pointer dereference").out, _target);
        (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").host = stdgo.Go.str()?.__copy__();
    }
}
