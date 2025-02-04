package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282_static_extension.T_benchmarkCodeMarshalError___localname___Dummy_3282_static_extension) class T_benchmarkCodeMarshalError___localname___Dummy_3282 {
    public var name : stdgo.GoString = "";
    public var next : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282>);
    public function new(?name:stdgo.GoString, ?next:stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkCodeMarshalError___localname___Dummy_3282(name, next);
    }
}
