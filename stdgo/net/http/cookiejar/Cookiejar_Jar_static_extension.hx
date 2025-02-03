package stdgo.net.http.cookiejar;
class Jar_static_extension {
    static public function _domainAndType(_j:Jar, _host:String, _domain:String):stdgo.Tuple.Tuple3<String, Bool, stdgo.Error> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>);
        final _host = (_host : stdgo.GoString);
        final _domain = (_domain : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._domainAndType(_j, _host, _domain);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _newEntry(_j:Jar, _c:stdgo._internal.net.http.Http_Cookie.Cookie, _now:stdgo._internal.time.Time_Time.Time, _defPath:String, _host:String):stdgo.Tuple.Tuple3<T_entry, Bool, stdgo.Error> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>);
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>);
        final _defPath = (_defPath : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._newEntry(_j, _c, _now, _defPath, _host);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _setCookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL, _cookies:Array<stdgo._internal.net.http.Http_Cookie.Cookie>, _now:stdgo._internal.time.Time_Time.Time):Void {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _cookies = ([for (i in _cookies) (i : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._setCookies(_j, _u, _cookies, _now);
    }
    static public function setCookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL, _cookies:Array<stdgo._internal.net.http.Http_Cookie.Cookie>):Void {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _cookies = ([for (i in _cookies) (i : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension.setCookies(_j, _u, _cookies);
    }
    static public function _cookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL, _now:stdgo._internal.time.Time_Time.Time):Array<stdgo._internal.net.http.Http_Cookie.Cookie> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return [for (i in stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._cookies(_j, _u, _now)) i];
    }
    static public function cookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL):Array<stdgo._internal.net.http.Http_Cookie.Cookie> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return [for (i in stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension.cookies(_j, _u)) i];
    }
}
