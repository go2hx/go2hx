package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit class ValidTest {
    public var _in : stdgo.GoString = "";
    public var _out : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValidTest(_in, _out);
    }
}
