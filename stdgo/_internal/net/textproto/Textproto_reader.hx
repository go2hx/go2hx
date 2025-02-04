package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension) class Reader {
    public var r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_dot:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (r != null) this.r = r;
        if (_dot != null) this._dot = _dot;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(r, _dot, _buf);
    }
}
