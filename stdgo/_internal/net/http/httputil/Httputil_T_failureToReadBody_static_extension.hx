package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_failureToReadBody_asInterface) class T_failureToReadBody_static_extension {
    @:keep
    static public function close( _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody):stdgo.Error {
        @:recv var _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    static public function read( _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.httputil.Httputil__errNoBody._errNoBody };
    }
}