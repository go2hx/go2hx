package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2duplicatePseudoHeaderError_asInterface) class T_http2duplicatePseudoHeaderError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2duplicatepseudoheadererror.T_http2duplicatePseudoHeaderError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2duplicatepseudoheadererror.T_http2duplicatePseudoHeaderError = _e;
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("duplicate pseudo-header %q" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoString)))?.__copy__();
    }
}
