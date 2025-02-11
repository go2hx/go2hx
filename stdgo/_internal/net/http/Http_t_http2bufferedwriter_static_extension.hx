package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2bufferedWriter_asInterface) class T_http2bufferedWriter_static_extension {
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter> = _w;
        var _bw = (@:checkr _w ?? throw "null pointer dereference")._bw;
        if ((_bw == null || (_bw : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        var _err = (@:check2r _bw.flush() : stdgo.Error);
        @:check2r _bw.reset((null : stdgo._internal.io.Io_writer.Writer));
        stdgo._internal.net.http.Http__http2bufwriterpool._http2bufWriterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_bw)));
        (@:checkr _w ?? throw "null pointer dereference")._bw = null;
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _w ?? throw "null pointer dereference")._bw == null || ((@:checkr _w ?? throw "null pointer dereference")._bw : Dynamic).__nil__)) {
            var _bw = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2bufwriterpool._http2bufWriterPool.get() : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
            @:check2r _bw.reset((@:checkr _w ?? throw "null pointer dereference")._w);
            (@:checkr _w ?? throw "null pointer dereference")._bw = _bw;
        };
        return {
            final __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._bw.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function available( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._bw == null || ((@:checkr _w ?? throw "null pointer dereference")._bw : Dynamic).__nil__)) {
            return (4096 : stdgo.GoInt);
        };
        return @:check2r (@:checkr _w ?? throw "null pointer dereference")._bw.available();
    }
}
