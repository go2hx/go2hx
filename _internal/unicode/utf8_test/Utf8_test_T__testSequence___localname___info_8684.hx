package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit class T__testSequence___localname___info_8684 {
    public var _index : stdgo.GoInt = 0;
    public var _r : stdgo.GoInt32 = 0;
    public function new(?_index:stdgo.GoInt, ?_r:stdgo.GoInt32) {
        if (_index != null) this._index = _index;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__testSequence___localname___info_8684(_index, _r);
    }
}
