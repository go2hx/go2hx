package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeData_asInterface) class T_http2writeData_static_extension {
    @:keep
    @:tdfield
    static public function string( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData> = _w;
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("writeData(stream=%d, p=%d, endStream=%v)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._streamID), stdgo.Go.toInterface(((@:checkr _w ?? throw "null pointer dereference")._p.length)), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._endStream))?.__copy__();
    }
}
