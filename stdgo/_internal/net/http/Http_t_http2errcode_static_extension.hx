package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ErrCode_asInterface) class T_http2ErrCode_static_extension {
    @:keep
    @:tdfield
    static public function string( _e:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode = _e;
        {
            var __tmp__ = (stdgo._internal.net.http.Http__http2errcodename._http2errCodeName != null && stdgo._internal.net.http.Http__http2errcodename._http2errCodeName.__exists__(_e) ? { _0 : stdgo._internal.net.http.Http__http2errcodename._http2errCodeName[_e], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _s?.__copy__();
            };
        };
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("unknown error code 0x%x" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoUInt32)))?.__copy__();
    }
}
