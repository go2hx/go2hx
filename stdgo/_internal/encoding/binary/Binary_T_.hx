package stdgo._internal.encoding.binary;
@:structInit class T_ {
    public var int_ : stdgo.GoInt = 0;
    public var uint : stdgo.GoUInt = 0;
    public var uintptr : stdgo.GoUIntptr = 0;
    public var array : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
    public function new(?int_:stdgo.GoInt, ?uint:stdgo.GoUInt, ?uintptr:stdgo.GoUIntptr, ?array:stdgo.GoArray<stdgo.GoInt>) {
        if (int_ != null) this.int_ = int_;
        if (uint != null) this.uint = uint;
        if (uintptr != null) this.uintptr = uintptr;
        if (array != null) this.array = array;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(int_, uint, uintptr, array);
    }
}