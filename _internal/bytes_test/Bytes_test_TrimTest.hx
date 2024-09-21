package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit class TrimTest {
    public var _f : stdgo.GoString = "";
    public var _in : stdgo.GoString = "";
    public var _arg : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_f:stdgo.GoString, ?_in:stdgo.GoString, ?_arg:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_arg != null) this._arg = _arg;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TrimTest(_f, _in, _arg, _out);
    }
}
