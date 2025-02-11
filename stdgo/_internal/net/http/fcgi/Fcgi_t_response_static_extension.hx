package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_response_asInterface) class T_response_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        @:check2r _r.flush();
        return @:check2r (@:checkr _r ?? throw "null pointer dereference")._w.close();
    }
    @:keep
    @:tdfield
    static public function flush( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _r.writeHeader((200 : stdgo.GoInt));
        };
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function _writeCGIHeader( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader) {
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader = true;
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._w), ("Status: %d %s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statustext.statusText((@:checkr _r ?? throw "null pointer dereference")._code)));
        {
            var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._header != null && (@:checkr _r ?? throw "null pointer dereference")._header.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._header[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasType:Bool = __tmp__._1;
            if ((((@:checkr _r ?? throw "null pointer dereference")._code != (304 : stdgo.GoInt)) && !_hasType : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._header.set(("Content-Type" : stdgo.GoString), stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_p)?.__copy__());
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._header.write(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._w));
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._w.writeString(("\r\n" : stdgo.GoString));
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function writeHeader( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>, _code:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr _r ?? throw "null pointer dereference")._code = _code;
        if (_code == ((304 : stdgo.GoInt))) {
            (@:checkr _r ?? throw "null pointer dereference")._header.del(("Content-Type" : stdgo.GoString));
            (@:checkr _r ?? throw "null pointer dereference")._header.del(("Content-Length" : stdgo.GoString));
            (@:checkr _r ?? throw "null pointer dereference")._header.del(("Transfer-Encoding" : stdgo.GoString));
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._header.get(("Date" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _r ?? throw "null pointer dereference")._header.set(("Date" : stdgo.GoString), stdgo._internal.time.Time_now.now().uTC().format(("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString))?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _r.writeHeader((200 : stdgo.GoInt));
        };
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader) {
            @:check2r _r._writeCGIHeader(_p);
        };
        return {
            final __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._w.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function header( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._header;
    }
}
