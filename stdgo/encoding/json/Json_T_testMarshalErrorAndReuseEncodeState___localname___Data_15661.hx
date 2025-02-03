package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661_static_extension) abstract T_testMarshalErrorAndReuseEncodeState___localname___Data_15661(stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661) from stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 to stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 {
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
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661((a : stdgo.GoString), (i : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
