package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_slowReader_static_extension.T_slowReader_static_extension) class T_slowReader {
    public var _max : stdgo.GoInt = 0;
    public var _buf : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?_max:stdgo.GoInt, ?_buf:stdgo._internal.io.Io_Reader.Reader) {
        if (_max != null) this._max = _max;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_slowReader(_max, _buf);
    }
}
