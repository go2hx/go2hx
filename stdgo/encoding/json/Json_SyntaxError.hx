package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError) from stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError to stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_msg:String, ?offset:haxe.Int64) this = new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError((_msg : stdgo.GoString), (offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
