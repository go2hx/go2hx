package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_subexpindex_static_extension.T_subexpIndex_static_extension) class T_subexpIndex {
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_index:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subexpIndex(_name, _index);
    }
}
