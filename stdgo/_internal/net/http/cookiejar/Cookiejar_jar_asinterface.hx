package stdgo._internal.net.http.cookiejar;
class Jar_asInterface {
    @:keep
    @:tdfield
    public dynamic function _domainAndType(_host:stdgo.GoString, _domain:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } return @:_0 __self__.value._domainAndType(_host, _domain);
    @:keep
    @:tdfield
    public dynamic function _newEntry(_c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>, _now:stdgo._internal.time.Time_time.Time, _defPath:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } return @:_0 __self__.value._newEntry(_c, _now, _defPath, _host);
    @:keep
    @:tdfield
    public dynamic function _setCookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>, _now:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value._setCookies(_u, _cookies, _now);
    @:keep
    @:tdfield
    public dynamic function setCookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>):Void @:_0 __self__.value.setCookies(_u, _cookies);
    @:keep
    @:tdfield
    public dynamic function _cookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _now:stdgo._internal.time.Time_time.Time):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_0 __self__.value._cookies(_u, _now);
    @:keep
    @:tdfield
    public dynamic function cookies(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_0 __self__.value.cookies(_u);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.cookiejar.Cookiejar_jarpointer.JarPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
