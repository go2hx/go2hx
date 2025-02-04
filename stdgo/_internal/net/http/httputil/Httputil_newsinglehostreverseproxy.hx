package stdgo._internal.net.http.httputil;
function newSingleHostReverseProxy(_target:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> {
        var _director = function(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
            stdgo._internal.net.http.httputil.Httputil__rewriterequesturl._rewriteRequestURL(_req, _target);
        };
        return (stdgo.Go.setRef(({ director : _director } : stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>);
    }
