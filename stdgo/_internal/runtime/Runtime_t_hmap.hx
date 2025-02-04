package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_hmap_static_extension.T_hmap_static_extension) class T_hmap {
    public var b : stdgo.GoUInt8 = 0;
    public function new(?b:stdgo.GoUInt8) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_hmap(b);
    }
}
