package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370_static_extension.T_benchmarkCodeEncoderError___localname___Dummy_2370_static_extension) class T_benchmarkCodeEncoderError___localname___Dummy_2370 {
    public var name : stdgo.GoString = "";
    public var next : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>);
    public function new(?name:stdgo.GoString, ?next:stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkCodeEncoderError___localname___Dummy_2370(name, next);
    }
}
