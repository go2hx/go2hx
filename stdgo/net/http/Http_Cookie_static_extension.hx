package stdgo.net.http;
class Cookie_static_extension {
    static public function valid(_c:Cookie):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>);
        return stdgo._internal.net.http.Http_Cookie_static_extension.Cookie_static_extension.valid(_c);
    }
    static public function string(_c:Cookie):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>);
        return stdgo._internal.net.http.Http_Cookie_static_extension.Cookie_static_extension.string(_c);
    }
}
