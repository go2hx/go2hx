package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_example_static_extension) abstract T_example(stdgo._internal.encoding.json.Json_T_example.T_example) from stdgo._internal.encoding.json.Json_T_example.T_example to stdgo._internal.encoding.json.Json_T_example.T_example {
    public var _compact(get, set) : String;
    function get__compact():String return this._compact;
    function set__compact(v:String):String {
        this._compact = (v : stdgo.GoString);
        return v;
    }
    public var _indent(get, set) : String;
    function get__indent():String return this._indent;
    function set__indent(v:String):String {
        this._indent = (v : stdgo.GoString);
        return v;
    }
    public function new(?_compact:String, ?_indent:String) this = new stdgo._internal.encoding.json.Json_T_example.T_example((_compact : stdgo.GoString), (_indent : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
