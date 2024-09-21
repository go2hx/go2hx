package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_rot13Reader_static_extension.T_rot13Reader_static_extension) class T_rot13Reader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rot13Reader(_r);
    }
}
