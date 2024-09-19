package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_emptyThenNonEmptyReader_static_extension.T_emptyThenNonEmptyReader_static_extension) class T_emptyThenNonEmptyReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _n : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_n:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyThenNonEmptyReader(_r, _n);
    }
}
