package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
@:structInit class T_caseT {
    public var _cas : stdgo.GoInt = 0;
    public var _in : stdgo.GoInt32 = 0;
    public var _out : stdgo.GoInt32 = 0;
    public function new(?_cas:stdgo.GoInt, ?_in:stdgo.GoInt32, ?_out:stdgo.GoInt32) {
        if (_cas != null) this._cas = _cas;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_caseT(_cas, _in, _out);
    }
}
