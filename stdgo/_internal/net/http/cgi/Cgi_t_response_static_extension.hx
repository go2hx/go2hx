package stdgo._internal.net.http.cgi;
@:keep @:allow(stdgo._internal.net.http.cgi.Cgi.T_response_asInterface) class T_response_static_extension {
    @:keep
    @:tdfield
    static public function _writeCGIHeader( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L211"
        if ((@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L212"
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader = true;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L215"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._bufw), ("Status: %d %s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statustext.statusText((@:checkr _r ?? throw "null pointer dereference")._code)));
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L216"
        {
            var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._header != null && (@:checkr _r ?? throw "null pointer dereference")._header.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._header[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasType:Bool = __tmp__._1;
            if (!_hasType) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L217"
                (@:checkr _r ?? throw "null pointer dereference")._header.set(("Content-Type" : stdgo.GoString), stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_p)?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L219"
        (@:checkr _r ?? throw "null pointer dereference")._header.write(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._bufw));
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L220"
        (@:checkr _r ?? throw "null pointer dereference")._bufw.writeString(("\r\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L221"
        (@:checkr _r ?? throw "null pointer dereference")._bufw.flush();
    }
    @:keep
    @:tdfield
    static public function writeHeader( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>, _code:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L197"
        if ((@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L199"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("CGI attempted to write header twice on request for %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr (@:checkr _r ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").uRL)));
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L200"
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr _r ?? throw "null pointer dereference")._code = _code;
    }
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L187"
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L188"
            _r.writeHeader((200 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L190"
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L191"
            _r._writeCGIHeader(_p);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L193"
        return (@:checkr _r ?? throw "null pointer dereference")._bufw.write(_p);
    }
    @:keep
    @:tdfield
    static public function header( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L183"
        return (@:checkr _r ?? throw "null pointer dereference")._header;
    }
    @:keep
    @:tdfield
    static public function flush( _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L179"
        (@:checkr _r ?? throw "null pointer dereference")._bufw.flush();
    }
}
