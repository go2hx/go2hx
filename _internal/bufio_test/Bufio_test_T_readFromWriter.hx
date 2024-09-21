package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_readFromWriter_static_extension.T_readFromWriter_static_extension) class T_readFromWriter {
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _writeBytes : stdgo.GoInt = 0;
    public var _readFromBytes : stdgo.GoInt = 0;
    public function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_writeBytes:stdgo.GoInt, ?_readFromBytes:stdgo.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_writeBytes != null) this._writeBytes = _writeBytes;
        if (_readFromBytes != null) this._readFromBytes = _readFromBytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readFromWriter(_buf, _writeBytes, _readFromBytes);
    }
}
