package stdgo._internal.bufio;
@:structInit @:using(stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension) class Writer {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _n : stdgo.GoInt = 0;
    public var _wr : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?_err:stdgo.Error, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_n:stdgo.GoInt, ?_wr:stdgo._internal.io.Io_writer.Writer) {
        if (_err != null) this._err = _err;
        if (_buf != null) this._buf = _buf;
        if (_n != null) this._n = _n;
        if (_wr != null) this._wr = _wr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_err, _buf, _n, _wr);
    }
}
