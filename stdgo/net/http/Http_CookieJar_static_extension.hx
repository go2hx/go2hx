package stdgo.net.http;
class CookieJar_static_extension {
    static public function cookies(t:stdgo._internal.net.http.Http_CookieJar.CookieJar, _u:stdgo._internal.net.url.Url_URL.URL):Array<Cookie> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return [for (i in stdgo._internal.net.http.Http_CookieJar_static_extension.CookieJar_static_extension.cookies(t, _u)) i];
    }
    static public function setCookies(t:stdgo._internal.net.http.Http_CookieJar.CookieJar, _u:stdgo._internal.net.url.Url_URL.URL, _cookies:Array<Cookie>):Void {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _cookies = ([for (i in _cookies) (i : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        stdgo._internal.net.http.Http_CookieJar_static_extension.CookieJar_static_extension.setCookies(t, _u, _cookies);
    }
}
