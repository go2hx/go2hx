package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_Reader_static_extension.Reader_static_extension) class Reader {
    public var r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    public var _dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?_dot:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (r != null) this.r = r;
        if (_dot != null) this._dot = _dot;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(r, _dot, _buf);
    }
}
