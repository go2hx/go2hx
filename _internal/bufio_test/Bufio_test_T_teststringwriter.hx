package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_teststringwriter_static_extension.T_teststringwriter_static_extension) class T_teststringwriter {
    public var _write : stdgo.GoString = "";
    public var _writeString : stdgo.GoString = "";
    public function new(?_write:stdgo.GoString, ?_writeString:stdgo.GoString) {
        if (_write != null) this._write = _write;
        if (_writeString != null) this._writeString = _writeString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_teststringwriter(_write, _writeString);
    }
}
