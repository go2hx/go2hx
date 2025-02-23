package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2chunkWriter_asInterface) class T_http2chunkWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _cw:stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter = _cw?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = @:check2r _cw._rws._writeChunk(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed))) {
            _err = (@:checkr (@:checkr _cw._rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._closeErr;
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
