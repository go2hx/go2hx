package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487_static_extension.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487_static_extension) class T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
    public var name : stdgo.GoString = "";
    public var next : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>);
    public function new(?name:stdgo.GoString, ?next:stdgo.Ref<stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487(name, next);
    }
}
