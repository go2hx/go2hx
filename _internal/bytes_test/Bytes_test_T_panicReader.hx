package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(_internal.bytes_test.Bytes_test_T_panicReader_static_extension.T_panicReader_static_extension) class T_panicReader {
    public var _panic : Bool = false;
    public function new(?_panic:Bool) {
        if (_panic != null) this._panic = _panic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_panicReader(_panic);
    }
}
