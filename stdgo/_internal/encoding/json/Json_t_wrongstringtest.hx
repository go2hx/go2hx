package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_wrongstringtest_static_extension.T_wrongStringTest_static_extension) class T_wrongStringTest {
    public var _in : stdgo.GoString = "";
    public var _err : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_err:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrongStringTest(_in, _err);
    }
}
