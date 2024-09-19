package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ProxyRequest_asInterface) class ProxyRequest_static_extension {
    @:keep
    static public function setXForwarded( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> = _r;
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_r.in_.remoteAddr?.__copy__()), _clientIP:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err == null) {
            var _prior = (_r.out.header[("X-Forwarded-For" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_prior.length) > (0 : stdgo.GoInt) : Bool)) {
                _clientIP = ((stdgo._internal.strings.Strings_join.join(_prior, (", " : stdgo.GoString)) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _clientIP?.__copy__() : stdgo.GoString)?.__copy__();
            };
            _r.out.header.set(("X-Forwarded-For" : stdgo.GoString), _clientIP?.__copy__());
        } else {
            _r.out.header.del(("X-Forwarded-For" : stdgo.GoString));
        };
        _r.out.header.set(("X-Forwarded-Host" : stdgo.GoString), _r.in_.host?.__copy__());
        if (_r.in_.tls == null || (_r.in_.tls : Dynamic).__nil__) {
            _r.out.header.set(("X-Forwarded-Proto" : stdgo.GoString), ("http" : stdgo.GoString));
        } else {
            _r.out.header.set(("X-Forwarded-Proto" : stdgo.GoString), ("https" : stdgo.GoString));
        };
    }
    @:keep
    static public function setURL( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest>, _target:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> = _r;
        stdgo._internal.net.http.httputil.Httputil__rewriteRequestURL._rewriteRequestURL(_r.out, _target);
        _r.out.host = stdgo.Go.str()?.__copy__();
    }
}
