package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit class RepeatTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public var _count : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RepeatTest(_in, _out, _count);
    }
}
