package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ProxyRequest_asInterface) class ProxyRequest_static_extension {
    @:keep
    @:tdfield
    static public function setXForwarded( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest> = _r;
        var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr (@:checkr _r ?? throw "null pointer dereference").in_ ?? throw "null pointer dereference").remoteAddr?.__copy__()), _clientIP:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L80"
        if (_err == null) {
            var _prior = ((@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header[("X-Forwarded-For" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L82"
            if (((_prior.length) > (0 : stdgo.GoInt) : Bool)) {
                _clientIP = ((stdgo._internal.strings.Strings_join.join(_prior, (", " : stdgo.GoString)) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _clientIP?.__copy__() : stdgo.GoString)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L85"
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-For" : stdgo.GoString), _clientIP?.__copy__());
        } else {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L87"
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.del(("X-Forwarded-For" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L89"
        (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-Host" : stdgo.GoString), (@:checkr (@:checkr _r ?? throw "null pointer dereference").in_ ?? throw "null pointer dereference").host?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L90"
        if (({
            final value = (@:checkr (@:checkr _r ?? throw "null pointer dereference").in_ ?? throw "null pointer dereference").tLS;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L91"
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-Proto" : stdgo.GoString), ("http" : stdgo.GoString));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L93"
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").header.set(("X-Forwarded-Proto" : stdgo.GoString), ("https" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function setURL( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest>, _target:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L55"
        stdgo._internal.net.http.httputil.Httputil__rewriterequesturl._rewriteRequestURL((@:checkr _r ?? throw "null pointer dereference").out, _target);
        (@:checkr (@:checkr _r ?? throw "null pointer dereference").out ?? throw "null pointer dereference").host = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
}
