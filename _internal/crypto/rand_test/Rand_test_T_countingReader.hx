package _internal.crypto.rand_test;
@:structInit @:using(_internal.crypto.rand_test.Rand_test_T_countingReader_static_extension.T_countingReader_static_extension) class T_countingReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _n : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_n:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_countingReader(_r, _n);
    }
}
