package stdgo._internal.net.http;
function _envProxyFunc():stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        @:check2 stdgo._internal.net.http.Http__envProxyOnce._envProxyOnce.do_(function():Void {
            stdgo._internal.net.http.Http__envProxyFuncValue._envProxyFuncValue = @:check2r _internal.golang_dot_org.x.net.http.httpproxy.Httpproxy_fromEnvironment.fromEnvironment().proxyFunc();
        });
        return stdgo._internal.net.http.Http__envProxyFuncValue._envProxyFuncValue;
    }
