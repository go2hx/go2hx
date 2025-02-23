package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ConnState_asInterface) class ConnState_static_extension {
    @:keep
    @:tdfield
    static public function string( _c:stdgo._internal.net.http.Http_connstate.ConnState):stdgo.GoString {
        @:recv var _c:stdgo._internal.net.http.Http_connstate.ConnState = _c;
        return (stdgo._internal.net.http.Http__statename._stateName[_c] ?? ("" : stdgo.GoString))?.__copy__();
    }
}
