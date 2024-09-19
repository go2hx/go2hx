package stdgo._internal.reflect;
@:structInit class StringHeader {
    public var data : stdgo.GoUIntptr = 0;
    public var len : stdgo.GoInt = 0;
    public function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringHeader(data, len);
    }
}
