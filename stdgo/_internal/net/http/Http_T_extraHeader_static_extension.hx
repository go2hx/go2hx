package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_extraHeader_asInterface) class T_extraHeader_static_extension {
    @:keep
    @:tdfield
    static public function write( _h:stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader, _w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader = _h?.__copy__();
        if (_h._date != null) {
            @:check2r _w.write(stdgo._internal.net.http.Http__headerDate._headerDate);
            @:check2r _w.write(_h._date);
            @:check2r _w.write(stdgo._internal.net.http.Http__crlf._crlf);
        };
        if (_h._contentLength != null) {
            @:check2r _w.write(stdgo._internal.net.http.Http__headerContentLength._headerContentLength);
            @:check2r _w.write(_h._contentLength);
            @:check2r _w.write(stdgo._internal.net.http.Http__crlf._crlf);
        };
        for (_i => _v in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[_h._contentType?.__copy__(), _h._connection?.__copy__(), _h._transferEncoding?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            if (_v != (stdgo.Go.str())) {
                @:check2r _w.write(stdgo._internal.net.http.Http__extraHeaderKeys._extraHeaderKeys[(_i : stdgo.GoInt)]);
                @:check2r _w.write(stdgo._internal.net.http.Http__colonSpace._colonSpace);
                @:check2r _w.writeString(_v?.__copy__());
                @:check2r _w.write(stdgo._internal.net.http.Http__crlf._crlf);
            };
        };
    }
}
