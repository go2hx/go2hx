package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282_static_extension) abstract T_benchmarkCodeMarshalError___localname___Dummy_3282(stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282) from stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282 to stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_benchmarkCodeMarshalError___localname___Dummy_3282;
    function get_next():T_benchmarkCodeMarshalError___localname___Dummy_3282 return this.next;
    function set_next(v:T_benchmarkCodeMarshalError___localname___Dummy_3282):T_benchmarkCodeMarshalError___localname___Dummy_3282 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282>);
        return v;
    }
    public function new(?name:String, ?next:T_benchmarkCodeMarshalError___localname___Dummy_3282) this = new stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
