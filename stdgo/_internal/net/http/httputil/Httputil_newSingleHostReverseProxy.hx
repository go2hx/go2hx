package stdgo._internal.net.http.httputil;
function newSingleHostReverseProxy(_target:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> {
        var _director = function(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
            stdgo._internal.net.http.httputil.Httputil__rewriteRequestURL._rewriteRequestURL(_req, _target);
        };
        return (stdgo.Go.setRef(({ director : _director } : stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
    }
