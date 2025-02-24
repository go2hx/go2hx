package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_connectMethodKey_asInterface) class T_connectMethodKey_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey):stdgo.GoString {
        @:recv var _k:stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey = _k?.__copy__();
        var _h1:stdgo.GoString = ("" : stdgo.GoString);
        if (_k._onlyH1) {
            _h1 = (",h1" : stdgo.GoString);
        };
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("%s|%s%s|%s" : stdgo.GoString), stdgo.Go.toInterface(_k._proxy), stdgo.Go.toInterface(_k._scheme), stdgo.Go.toInterface(_h1), stdgo.Go.toInterface(_k._addr))?.__copy__();
    }
}
