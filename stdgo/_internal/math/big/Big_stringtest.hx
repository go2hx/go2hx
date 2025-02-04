package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_stringtest_static_extension.StringTest_static_extension) class StringTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public var _ok : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_ok:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out, _ok);
    }
}
