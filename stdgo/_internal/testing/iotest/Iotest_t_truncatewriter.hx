package stdgo._internal.testing.iotest;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_truncatewriter_static_extension.T_truncateWriter_static_extension) class T_truncateWriter {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _n : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_n:stdgo.GoInt64) {
        if (_w != null) this._w = _w;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_truncateWriter(_w, _n);
    }
}
