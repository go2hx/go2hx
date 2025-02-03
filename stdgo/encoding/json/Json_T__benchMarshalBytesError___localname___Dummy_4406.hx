package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406_static_extension) abstract T__benchMarshalBytesError___localname___Dummy_4406(stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406) from stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406 to stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T__benchMarshalBytesError___localname___Dummy_4406;
    function get_next():T__benchMarshalBytesError___localname___Dummy_4406 return this.next;
    function set_next(v:T__benchMarshalBytesError___localname___Dummy_4406):T__benchMarshalBytesError___localname___Dummy_4406 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>);
        return v;
    }
    public function new(?name:String, ?next:T__benchMarshalBytesError___localname___Dummy_4406) this = new stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
