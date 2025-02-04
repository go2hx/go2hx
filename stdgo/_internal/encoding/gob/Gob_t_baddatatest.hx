package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_baddatatest_static_extension.T_badDataTest_static_extension) class T_badDataTest {
    public var _input : stdgo.GoString = "";
    public var _error : stdgo.GoString = "";
    public var _data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_input:stdgo.GoString, ?_error:stdgo.GoString, ?_data:stdgo.AnyInterface) {
        if (_input != null) this._input = _input;
        if (_error != null) this._error = _error;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badDataTest(_input, _error, _data);
    }
}
