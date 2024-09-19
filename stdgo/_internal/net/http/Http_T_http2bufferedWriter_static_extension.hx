package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2bufferedWriter_asInterface) class T_http2bufferedWriter_static_extension {
    @:keep
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter> = _w;
        var _bw = _w._bw;
        if (_bw == null || (_bw : Dynamic).__nil__) {
            return (null : stdgo.Error);
        };
        var _err = (_bw.flush() : stdgo.Error);
        _bw.reset((null : stdgo._internal.io.Io_Writer.Writer));
        stdgo._internal.net.http.Http__http2bufWriterPool._http2bufWriterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_bw)));
        _w._bw = null;
        return _err;
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_w._bw == null || (_w._bw : Dynamic).__nil__) {
            var _bw = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2bufWriterPool._http2bufWriterPool.get() : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
            _bw.reset(_w._w);
            _w._bw = _bw;
        };
        return _w._bw.write(_p);
    }
    @:keep
    static public function available( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter> = _w;
        if (_w._bw == null || (_w._bw : Dynamic).__nil__) {
            return (4096 : stdgo.GoInt);
        };
        return _w._bw.available();
    }
}
