package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370_static_extension) abstract T_benchmarkCodeEncoderError___localname___Dummy_2370(stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370) from stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370 to stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_benchmarkCodeEncoderError___localname___Dummy_2370;
    function get_next():T_benchmarkCodeEncoderError___localname___Dummy_2370 return this.next;
    function set_next(v:T_benchmarkCodeEncoderError___localname___Dummy_2370):T_benchmarkCodeEncoderError___localname___Dummy_2370 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>);
        return v;
    }
    public function new(?name:String, ?next:T_benchmarkCodeEncoderError___localname___Dummy_2370) this = new stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
