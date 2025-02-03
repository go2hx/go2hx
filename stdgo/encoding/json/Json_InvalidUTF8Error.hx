package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.InvalidUTF8Error_static_extension) abstract InvalidUTF8Error(stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error) from stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error to stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
