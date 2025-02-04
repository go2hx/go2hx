package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_exectest_static_extension.T_execTest_static_extension) class T_execTest {
    public var _name : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public var _data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _ok : Bool = false;
    public function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString, ?_data:stdgo.AnyInterface, ?_ok:Bool) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
        if (_data != null) this._data = _data;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_execTest(_name, _input, _output, _data, _ok);
    }
}
