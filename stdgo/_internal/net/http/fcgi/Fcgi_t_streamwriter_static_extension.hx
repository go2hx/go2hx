package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_streamWriter_asInterface) class T_streamWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L276"
        return (@:checkr _w ?? throw "null pointer dereference")._c._writeRecord((@:checkr _w ?? throw "null pointer dereference")._recType, (@:checkr _w ?? throw "null pointer dereference")._reqId, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_streamwriter.T_streamWriter> = _w;
        var _nn = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L260"
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _n = (_p.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L262"
            if ((_n > (65535 : stdgo.GoInt) : Bool)) {
                _n = (65535 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L265"
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._c._writeRecord((@:checkr _w ?? throw "null pointer dereference")._recType, (@:checkr _w ?? throw "null pointer dereference")._reqId, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L266"
                    return { _0 : _nn, _1 : _err };
                };
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L271"
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
}
