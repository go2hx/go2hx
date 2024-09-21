package _internal.encoding.json_test;
@:structInit class T_exampleRawMessage_unmarshal___localname___YCbCr_3931 {
    public var y : stdgo.GoUInt8 = 0;
    public var cb : stdgo.GoInt8 = 0;
    public var cr : stdgo.GoInt8 = 0;
    public function new(?y:stdgo.GoUInt8, ?cb:stdgo.GoInt8, ?cr:stdgo.GoInt8) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleRawMessage_unmarshal___localname___YCbCr_3931(y, cb, cr);
    }
}
