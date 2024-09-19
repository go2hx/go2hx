package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_contextKey_asInterface) class T_contextKey_static_extension {
    @:keep
    static public function string( _k:stdgo.Ref<stdgo._internal.net.http.Http_T_contextKey.T_contextKey>):stdgo.GoString {
        @:recv var _k:stdgo.Ref<stdgo._internal.net.http.Http_T_contextKey.T_contextKey> = _k;
        return (("net/http context value " : stdgo.GoString) + _k._name?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
