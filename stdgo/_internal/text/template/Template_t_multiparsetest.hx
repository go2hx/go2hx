package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_multiparsetest_static_extension.T_multiParseTest_static_extension) class T_multiParseTest {
    public var _name : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _ok : Bool = false;
    public var _names : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _results : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_ok:Bool, ?_names:stdgo.Slice<stdgo.GoString>, ?_results:stdgo.Slice<stdgo.GoString>) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
        if (_ok != null) this._ok = _ok;
        if (_names != null) this._names = _names;
        if (_results != null) this._results = _results;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiParseTest(_name, _input, _ok, _names, _results);
    }
}
