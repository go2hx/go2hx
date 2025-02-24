package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_contextKey_asInterface) class T_contextKey_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>):stdgo.GoString {
        @:recv var _k:stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey> = _k;
        return (("net/http context value " : stdgo.GoString) + (@:checkr _k ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
