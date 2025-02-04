package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_indenterrortest_static_extension.T_indentErrorTest_static_extension) class T_indentErrorTest {
    public var _in : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_indentErrorTest(_in, _err);
    }
}
