package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2bufferedWriter_static_extension.T_http2bufferedWriter_static_extension) class T_http2bufferedWriter {
    @:optional
    public var __14 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public function new(?__14:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>) {
        if (__14 != null) this.__14 = __14;
        if (_w != null) this._w = _w;
        if (_bw != null) this._bw = _bw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2bufferedWriter(__14, _w, _bw);
    }
}
