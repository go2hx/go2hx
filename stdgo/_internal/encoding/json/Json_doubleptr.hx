package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_doubleptr_static_extension.DoublePtr_static_extension) class DoublePtr {
    public var i : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>);
    public var j : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>);
    public function new(?i:stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>, ?j:stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>) {
        if (i != null) this.i = i;
        if (j != null) this.j = j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DoublePtr(i, j);
    }
}
