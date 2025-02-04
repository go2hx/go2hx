package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794_static_extension.T_testEndToEnd___localname___T3_13794_static_extension) class T_testEndToEnd___localname___T3_13794 {
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
