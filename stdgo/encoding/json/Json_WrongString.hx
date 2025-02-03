package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.WrongString_static_extension) abstract WrongString(stdgo._internal.encoding.json.Json_WrongString.WrongString) from stdgo._internal.encoding.json.Json_WrongString.WrongString to stdgo._internal.encoding.json.Json_WrongString.WrongString {
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = (v : stdgo.GoString);
        return v;
    }
    public function new(?message:String) this = new stdgo._internal.encoding.json.Json_WrongString.WrongString((message : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
