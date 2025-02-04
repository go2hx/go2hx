package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_nothingWrittenError_asInterface) class T_nothingWrittenError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _nwe:stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError):stdgo.Error {
        @:recv var _nwe:stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError = _nwe?.__copy__();
        return _nwe._error;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function error( __self__:stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError):stdgo.GoString return @:_5 __self__.error();
}
