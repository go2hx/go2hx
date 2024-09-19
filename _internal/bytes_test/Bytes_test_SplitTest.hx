package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit class SplitTest {
    public var _s : stdgo.GoString = "";
    public var _sep : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public var _a : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:stdgo.GoInt, ?_a:stdgo.Slice<stdgo.GoString>) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_n != null) this._n = _n;
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_s, _sep, _n, _a);
    }
}
