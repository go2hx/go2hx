package stdgo._internal.index.suffixarray;
@:structInit @:using(stdgo._internal.index.suffixarray.Suffixarray_t_testcase_static_extension.T_testCase_static_extension) class T_testCase {
    public var _name : stdgo.GoString = "";
    public var _source : stdgo.GoString = "";
    public var _patterns : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_name:stdgo.GoString, ?_source:stdgo.GoString, ?_patterns:stdgo.Slice<stdgo.GoString>) {
        if (_name != null) this._name = _name;
        if (_source != null) this._source = _source;
        if (_patterns != null) this._patterns = _patterns;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testCase(_name, _source, _patterns);
    }
}
