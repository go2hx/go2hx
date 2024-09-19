package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_T_runeScanner_static_extension.T_runeScanner_static_extension) class T_runeScanner {
    public var _rune : stdgo.GoInt32 = 0;
    public var _size : stdgo.GoInt = 0;
    public function new(?_rune:stdgo.GoInt32, ?_size:stdgo.GoInt) {
        if (_rune != null) this._rune = _rune;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runeScanner(_rune, _size);
    }
}
