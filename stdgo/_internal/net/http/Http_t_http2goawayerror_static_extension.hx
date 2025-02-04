package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2GoAwayError_asInterface) class T_http2GoAwayError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2goawayerror.T_http2GoAwayError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2goawayerror.T_http2GoAwayError = _e?.__copy__();
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("http2: server sent GOAWAY and closed the connection; LastStreamID=%v, ErrCode=%v, debug=%q" : stdgo.GoString), stdgo.Go.toInterface(_e.lastStreamID), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.errCode)), stdgo.Go.toInterface(_e.debugData))?.__copy__();
    }
}
