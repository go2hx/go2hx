package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_InternalFuzzTarget_static_extension.InternalFuzzTarget_static_extension) class InternalFuzzTarget {
    public var name : stdgo.GoString = "";
    public var fn : stdgo.Ref<stdgo._internal.testing.Testing_F.F> -> Void = null;
    public function new(?name:stdgo.GoString, ?fn:stdgo.Ref<stdgo._internal.testing.Testing_F.F> -> Void) {
        if (name != null) this.name = name;
        if (fn != null) this.fn = fn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InternalFuzzTarget(name, fn);
    }
}
