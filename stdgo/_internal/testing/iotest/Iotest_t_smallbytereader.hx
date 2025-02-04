package stdgo._internal.testing.iotest;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_smallbytereader_static_extension.T_smallByteReader_static_extension) class T_smallByteReader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _off : stdgo.GoInt = 0;
    public var _n : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_off:stdgo.GoInt, ?_n:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_smallByteReader(_r, _off, _n);
    }
}
