package stdgo._internal.reflect;
@:structInit class SliceHeader {
    public var data : stdgo.GoUIntptr = 0;
    public var len : stdgo.GoInt = 0;
    public var cap : stdgo.GoInt = 0;
    public function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt, ?cap:stdgo.GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
        if (cap != null) this.cap = cap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SliceHeader(data, len, cap);
    }
}
