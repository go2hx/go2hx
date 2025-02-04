package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2headerFieldValueError_asInterface) class T_http2headerFieldValueError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2headerfieldvalueerror.T_http2headerFieldValueError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2headerfieldvalueerror.T_http2headerFieldValueError = _e;
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("invalid header field value for %q" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoString)))?.__copy__();
    }
}
