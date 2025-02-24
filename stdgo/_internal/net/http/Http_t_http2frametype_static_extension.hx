package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2FrameType_asInterface) class T_http2FrameType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType):stdgo.GoString {
        @:recv var _t:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType = _t;
        {
            var __tmp__ = (stdgo._internal.net.http.Http__http2framename._http2frameName != null && stdgo._internal.net.http.Http__http2framename._http2frameName.__exists__(_t) ? { _0 : stdgo._internal.net.http.Http__http2framename._http2frameName[_t], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _s?.__copy__();
            };
        };
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("UNKNOWN_FRAME_TYPE_%d" : stdgo.GoString), stdgo.Go.toInterface((_t : stdgo.GoUInt8)))?.__copy__();
    }
}
