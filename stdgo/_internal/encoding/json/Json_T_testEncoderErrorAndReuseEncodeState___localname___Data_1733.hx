package stdgo._internal.encoding.json;
@:structInit class T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 {
    public var a : stdgo.GoString = "";
    public var i : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoString, ?i:stdgo.GoInt) {
        if (a != null) this.a = a;
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEncoderErrorAndReuseEncodeState___localname___Data_1733(a, i);
    }
}
