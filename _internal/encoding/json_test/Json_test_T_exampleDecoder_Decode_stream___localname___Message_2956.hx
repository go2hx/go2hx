package _internal.encoding.json_test;
@:structInit class T_exampleDecoder_Decode_stream___localname___Message_2956 {
    public var name : stdgo.GoString = "";
    public var text : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?text:stdgo.GoString) {
        if (name != null) this.name = name;
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleDecoder_Decode_stream___localname___Message_2956(name, text);
    }
}
