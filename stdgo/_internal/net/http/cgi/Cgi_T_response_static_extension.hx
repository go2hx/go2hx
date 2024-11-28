package stdgo._internal.net.http.cgi;
@:keep @:allow(stdgo._internal.net.http.cgi.Cgi.T_response_asInterface) class T_response_static_extension {
    @:keep
    static public function _writeCGIHeader( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response> = _r;
        if (_r._wroteCGIHeader) {
            return;
        };
        _r._wroteCGIHeader = true;
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_r._bufw), ("Status: %d %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_r._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_r._code)));
        {
            var __tmp__ = (_r._header != null && _r._header.exists(("Content-Type" : stdgo.GoString)) ? { _0 : _r._header[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasType:Bool = __tmp__._1;
            if (!_hasType) {
                _r._header.set(("Content-Type" : stdgo.GoString), stdgo._internal.net.http.Http_detectContentType.detectContentType(_p)?.__copy__());
            };
        };
        _r._header.write(stdgo.Go.asInterface(_r._bufw));
        _r._bufw.writeString(("\r\n" : stdgo.GoString));
        _r._bufw.flush();
    }
    @:keep
    static public function writeHeader( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response>, _code:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response> = _r;
        if (_r._wroteHeader) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("CGI attempted to write header twice on request for %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r._req.url)));
            return;
        };
        _r._wroteHeader = true;
        _r._code = _code;
    }
    @:keep
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!_r._wroteHeader) {
            _r.writeHeader((200 : stdgo.GoInt));
        };
        if (!_r._wroteCGIHeader) {
            _r._writeCGIHeader(_p);
        };
        return {
            var __tmp__ = _r._bufw.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function header( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response> = _r;
        return _r._header;
    }
    @:keep
    static public function flush( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_T_response.T_response> = _r;
        _r._bufw.flush();
    }
}
