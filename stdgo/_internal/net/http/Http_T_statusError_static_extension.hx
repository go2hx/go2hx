package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_statusError_asInterface) class T_statusError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.net.http.Http_T_statusError.T_statusError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_T_statusError.T_statusError = _e?.__copy__();
        return ((stdgo._internal.net.http.Http_statusText.statusText(_e._code) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e._text?.__copy__() : stdgo.GoString)?.__copy__();
    }
}