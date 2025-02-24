package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_chunkWriter_asInterface) class T_chunkWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter> = _cw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!(@:checkr _cw ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _cw._writeHeader(_p);
        };
        if ((@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").method == (("HEAD" : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((@:checkr _cw ?? throw "null pointer dereference")._chunking) {
            {
                var __tmp__ = stdgo._internal.net.http.Http__fmt._fmt.fprintf(stdgo.Go.asInterface((@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw), ("%x\r\n" : stdgo.GoString), stdgo.Go.toInterface((_p.length)));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.close();
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((@:checkr _cw ?? throw "null pointer dereference")._chunking && (_err == null) : Bool)) {
            {
                var __tmp__ = @:check2r (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.close();
        };
        return { _0 : _n, _1 : _err };
    }
}
