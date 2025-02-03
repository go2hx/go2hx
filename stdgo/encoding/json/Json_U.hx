package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.U_static_extension) abstract U(stdgo._internal.encoding.json.Json_U.U) from stdgo._internal.encoding.json.Json_U.U to stdgo._internal.encoding.json.Json_U.U {
    public var alphabet(get, set) : String;
    function get_alphabet():String return this.alphabet;
    function set_alphabet(v:String):String {
        this.alphabet = (v : stdgo.GoString);
        return v;
    }
    public function new(?alphabet:String) this = new stdgo._internal.encoding.json.Json_U.U((alphabet : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
