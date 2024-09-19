package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit class ValidRuneTest {
    public var _r : stdgo.GoInt32 = 0;
    public var _ok : Bool = false;
    public function new(?_r:stdgo.GoInt32, ?_ok:Bool) {
        if (_r != null) this._r = _r;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValidRuneTest(_r, _ok);
    }
}
