package stdgo._internal.net.http;
@:interface typedef CookieJar = stdgo.StructType & {
    /**
        * SetCookies handles the receipt of the cookies in a reply for the
        * given URL.  It may or may not choose to save the cookies, depending
        * on the jar's policy and implementation.
        
        
    **/
    @:interfacetypeffun
    public dynamic function setCookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>):Void;
    /**
        * Cookies returns the cookies to send in a request for the given URL.
        * It is up to the implementation to honor the standard cookie use
        * restrictions such as in RFC 6265.
        
        
    **/
    @:interfacetypeffun
    public dynamic function cookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>;
};
