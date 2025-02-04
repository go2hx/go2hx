package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_subexpcase_static_extension.T_subexpCase_static_extension) class T_subexpCase {
    public var _input : stdgo.GoString = "";
    public var _num : stdgo.GoInt = 0;
    public var _names : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _indices : stdgo.Slice<stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex>);
    public function new(?_input:stdgo.GoString, ?_num:stdgo.GoInt, ?_names:stdgo.Slice<stdgo.GoString>, ?_indices:stdgo.Slice<stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex>) {
        if (_input != null) this._input = _input;
        if (_num != null) this._num = _num;
        if (_names != null) this._names = _names;
        if (_indices != null) this._indices = _indices;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subexpCase(_input, _num, _names, _indices);
    }
}
