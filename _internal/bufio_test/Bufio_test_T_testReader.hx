package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_testReader_static_extension.T_testReader_static_extension) class T_testReader {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _stride : stdgo.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_stride:stdgo.GoInt) {
        if (_data != null) this._data = _data;
        if (_stride != null) this._stride = _stride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testReader(_data, _stride);
    }
}
