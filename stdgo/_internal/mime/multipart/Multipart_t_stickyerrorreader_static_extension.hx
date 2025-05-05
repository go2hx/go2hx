package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_stickyErrorReader_asInterface) class T_stickyErrorReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_stickyerrorreader.T_stickyErrorReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_stickyerrorreader.T_stickyErrorReader> = _r;
        var _n = (0 : stdgo.GoInt), _1 = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L141"
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L142"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            (@:checkr _r ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L145"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
            _n = __tmp__._0;
            _1 = __tmp__._1;
            __tmp__;
        };
    }
}
