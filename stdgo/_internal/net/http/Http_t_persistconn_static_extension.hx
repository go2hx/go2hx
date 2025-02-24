package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_persistConn_asInterface) class T_persistConn_static_extension {
    @:keep
    @:tdfield
    static public function read( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _pc ?? throw "null pointer dereference")._readLimit <= (0i64 : stdgo.GoInt64) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__fmt._fmt.errorf(("read limit of %d bytes exhausted" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _pc._maxHeaderResponseSize())) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_p.length : stdgo.GoInt64) > (@:checkr _pc ?? throw "null pointer dereference")._readLimit : Bool)) {
            _p = (_p.__slice__(0, (@:checkr _pc ?? throw "null pointer dereference")._readLimit) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = (@:checkr _pc ?? throw "null pointer dereference")._conn.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF))) {
            (@:checkr _pc ?? throw "null pointer dereference")._sawEOF = true;
        };
        (@:checkr _pc ?? throw "null pointer dereference")._readLimit = ((@:checkr _pc ?? throw "null pointer dereference")._readLimit - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
