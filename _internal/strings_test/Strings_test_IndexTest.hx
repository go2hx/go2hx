package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
@:structInit class IndexTest {
    public var _s : stdgo.GoString = "";
    public var _sep : stdgo.GoString = "";
    public var _out : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexTest(_s, _sep, _out);
    }
}
