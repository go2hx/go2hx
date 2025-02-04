package stdgo._internal.net.http;
@:keep class CookieJar_static_extension {
    @:interfacetypeffun
    static public function cookies(t:stdgo._internal.net.http.Http_cookiejar.CookieJar, _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return t.cookies(_u);
    @:interfacetypeffun
    static public function setCookies(t:stdgo._internal.net.http.Http_cookiejar.CookieJar, _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>):Void t.setCookies(_u, _cookies);
}
