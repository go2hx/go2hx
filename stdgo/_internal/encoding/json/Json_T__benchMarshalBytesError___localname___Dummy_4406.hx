package stdgo._internal.encoding.json;
@:structInit class T__benchMarshalBytesError___localname___Dummy_4406 {
    public var name : stdgo.GoString = "";
    public var next : stdgo.Ref<stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>);
    public function new(?name:stdgo.GoString, ?next:stdgo.Ref<stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__benchMarshalBytesError___localname___Dummy_4406(name, next);
    }
}
