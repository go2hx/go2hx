package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2headerFieldNameError_asInterface) class T_http2headerFieldNameError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2headerfieldnameerror.T_http2headerFieldNameError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2headerfieldnameerror.T_http2headerFieldNameError = _e;
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("invalid header field name %q" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoString)))?.__copy__();
    }
}
