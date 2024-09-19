package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
@:structInit class StringTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out);
    }
}
