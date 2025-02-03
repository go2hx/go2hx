package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733_static_extension) abstract T_testEncoderErrorAndReuseEncodeState___localname___Data_1733(stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733) from stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 to stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733((a : stdgo.GoString), (i : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
