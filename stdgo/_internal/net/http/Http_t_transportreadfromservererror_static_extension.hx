package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_transportReadFromServerError_asInterface) class T_transportReadFromServerError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError = _e?.__copy__();
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("net/http: Transport failed to read from server: %v" : stdgo.GoString), stdgo.Go.toInterface(_e._err))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError):stdgo.Error {
        @:recv var _e:stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError = _e?.__copy__();
        return _e._err;
    }
}
