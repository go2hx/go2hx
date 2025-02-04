package stdgo._internal.net.http;
function proxyFromEnvironment(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        return stdgo._internal.net.http.Http__envproxyfunc._envProxyFunc()((@:checkr _req ?? throw "null pointer dereference").uRL);
    }
