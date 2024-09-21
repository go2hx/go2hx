package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit class RunesTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _lossy : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoInt32>, ?_lossy:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_lossy != null) this._lossy = _lossy;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RunesTest(_in, _out, _lossy);
    }
}
