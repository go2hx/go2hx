package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeData_asInterface) class T_http2writeData_static_extension {
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData> = _w;
        return (((9 : stdgo.GoInt) + ((@:checkr _w ?? throw "null pointer dereference")._p.length) : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData> = _w;
        return @:check2r _ctx.framer().writeData((@:checkr _w ?? throw "null pointer dereference")._streamID, (@:checkr _w ?? throw "null pointer dereference")._endStream, (@:checkr _w ?? throw "null pointer dereference")._p);
    }
    @:keep
    @:tdfield
    static public function string( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData> = _w;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("writeData(stream=%d, p=%d, endStream=%v)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._streamID), stdgo.Go.toInterface(((@:checkr _w ?? throw "null pointer dereference")._p.length)), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._endStream))?.__copy__();
    }
}
