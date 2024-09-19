package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2headerFieldValueError_asInterface) class T_http2headerFieldValueError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.net.http.Http_T_http2headerFieldValueError.T_http2headerFieldValueError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_T_http2headerFieldValueError.T_http2headerFieldValueError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid header field value for %q" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoString)))?.__copy__();
    }
}
