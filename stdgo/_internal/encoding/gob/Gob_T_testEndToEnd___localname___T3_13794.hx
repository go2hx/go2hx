package stdgo._internal.encoding.gob;
@:structInit class T_testEndToEnd___localname___T3_13794 {
    public var x : stdgo.GoFloat64 = 0;
    public var z : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public function new(?x:stdgo.GoFloat64, ?z:stdgo.Pointer<stdgo.GoInt>) {
        if (x != null) this.x = x;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEndToEnd___localname___T3_13794(x, z);
    }
}
