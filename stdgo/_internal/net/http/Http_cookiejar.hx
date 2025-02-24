package stdgo._internal.net.http;
@:interface typedef CookieJar = stdgo.StructType & {
    @:interfacetypeffun
    function setCookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>):Void;
    @:interfacetypeffun
    function cookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>;
};
