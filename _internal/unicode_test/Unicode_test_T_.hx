package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
@:structInit class T_ {
    public var _rune : stdgo.GoInt32 = 0;
    public var _script : stdgo.GoString = "";
    public function new(?_rune:stdgo.GoInt32, ?_script:stdgo.GoString) {
        if (_rune != null) this._rune = _rune;
        if (_script != null) this._script = _script;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(_rune, _script);
    }
}
