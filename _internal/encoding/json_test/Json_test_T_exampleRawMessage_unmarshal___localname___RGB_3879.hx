package _internal.encoding.json_test;
@:structInit class T_exampleRawMessage_unmarshal___localname___RGB_3879 {
    public var r : stdgo.GoUInt8 = 0;
    public var g : stdgo.GoUInt8 = 0;
    public var b : stdgo.GoUInt8 = 0;
    public function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleRawMessage_unmarshal___localname___RGB_3879(r, g, b);
    }
}
