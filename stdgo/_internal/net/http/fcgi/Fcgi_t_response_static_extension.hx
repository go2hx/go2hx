package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_response_asInterface) class T_response_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L148"
        _r.flush();
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L149"
        return (@:checkr _r ?? throw "null pointer dereference")._w.close();
    }
    @:keep
    @:tdfield
    static public function flush( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L141"
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L142"
            _r.writeHeader((200 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L144"
        (@:checkr _r ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function _writeCGIHeader( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L127"
        if ((@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L128"
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader = true;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L131"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._w), ("Status: %d %s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statustext.statusText((@:checkr _r ?? throw "null pointer dereference")._code)));
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L132"
        {
            var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._header != null && (@:checkr _r ?? throw "null pointer dereference")._header.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._header[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasType:Bool = __tmp__._1;
            if ((((@:checkr _r ?? throw "null pointer dereference")._code != (304 : stdgo.GoInt)) && !_hasType : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L133"
                (@:checkr _r ?? throw "null pointer dereference")._header.set(("Content-Type" : stdgo.GoString), stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_p)?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L135"
        (@:checkr _r ?? throw "null pointer dereference")._header.write(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._w));
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L136"
        (@:checkr _r ?? throw "null pointer dereference")._w.writeString(("\r\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L137"
        (@:checkr _r ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function writeHeader( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>, _code:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L106"
        if ((@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L107"
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr _r ?? throw "null pointer dereference")._code = _code;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L111"
        if (_code == ((304 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L113"
            (@:checkr _r ?? throw "null pointer dereference")._header.del(("Content-Type" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L114"
            (@:checkr _r ?? throw "null pointer dereference")._header.del(("Content-Length" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L115"
            (@:checkr _r ?? throw "null pointer dereference")._header.del(("Transfer-Encoding" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L117"
        if ((@:checkr _r ?? throw "null pointer dereference")._header.get(("Date" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L118"
            (@:checkr _r ?? throw "null pointer dereference")._header.set(("Date" : stdgo.GoString), stdgo._internal.time.Time_now.now().uTC().format(("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString))?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L96"
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L97"
            _r.writeHeader((200 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L99"
        if (!(@:checkr _r ?? throw "null pointer dereference")._wroteCGIHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L100"
            _r._writeCGIHeader(_p);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L102"
        return (@:checkr _r ?? throw "null pointer dereference")._w.write(_p);
    }
    @:keep
    @:tdfield
    static public function header( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_response.T_response> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L92"
        return (@:checkr _r ?? throw "null pointer dereference")._header;
    }
}
