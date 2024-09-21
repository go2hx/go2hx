package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit class RuneLenTest {
    public var _r : stdgo.GoInt32 = 0;
    public var _size : stdgo.GoInt = 0;
    public function new(?_r:stdgo.GoInt32, ?_size:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RuneLenTest(_r, _size);
    }
}
