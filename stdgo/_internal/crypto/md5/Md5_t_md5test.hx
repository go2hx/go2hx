package stdgo._internal.crypto.md5;
@:structInit @:using(stdgo._internal.crypto.md5.Md5_t_md5test_static_extension.T_md5Test_static_extension) class T_md5Test {
    public var _out : stdgo.GoString = "";
    public var _in : stdgo.GoString = "";
    public var _halfState : stdgo.GoString = "";
    public function new(?_out:stdgo.GoString, ?_in:stdgo.GoString, ?_halfState:stdgo.GoString) {
        if (_out != null) this._out = _out;
        if (_in != null) this._in = _in;
        if (_halfState != null) this._halfState = _halfState;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_md5Test(_out, _in, _halfState);
    }
}
