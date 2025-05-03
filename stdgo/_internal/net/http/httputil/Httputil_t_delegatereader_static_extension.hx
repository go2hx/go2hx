package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_delegateReader_asInterface) class T_delegateReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_delegatereader.T_delegateReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_delegatereader.T_delegateReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L179"
        if ((@:checkr _r ?? throw "null pointer dereference")._r == null) {
            var _ok:Bool = false;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L181"
            {
                {
                    var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._c.__smartGet__();
                    (@:checkr _r ?? throw "null pointer dereference")._r = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L182"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L185"
        return (@:checkr _r ?? throw "null pointer dereference")._r.read(_p);
    }
}
