package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_example_static_extension.T_example_static_extension) class T_example {
    public var _compact : stdgo.GoString = "";
    public var _indent : stdgo.GoString = "";
    public function new(?_compact:stdgo.GoString, ?_indent:stdgo.GoString) {
        if (_compact != null) this._compact = _compact;
        if (_indent != null) this._indent = _indent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_example(_compact, _indent);
    }
}
