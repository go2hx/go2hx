package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_benchmarkEncoderEncode___localname___T_11092_static_extension) abstract T_benchmarkEncoderEncode___localname___T_11092(stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092) from stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092 to stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092 {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String, ?y:String) this = new stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092((x : stdgo.GoString), (y : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
