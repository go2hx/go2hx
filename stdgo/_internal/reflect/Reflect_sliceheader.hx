package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_sliceheader_static_extension.SliceHeader_static_extension) class SliceHeader {
    public var data : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
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
