package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit class Utf8Map {
    public var _r : stdgo.GoInt32 = 0;
    public var _str : stdgo.GoString = "";
    public function new(?_r:stdgo.GoInt32, ?_str:stdgo.GoString) {
        if (_r != null) this._r = _r;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Utf8Map(_r, _str);
    }
}
