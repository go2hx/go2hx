package stdgo._internal.testing;
@:structInit class InternalTest {
    public var name : stdgo.GoString = "";
    public var f : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void = null;
    public function new(?name:stdgo.GoString, ?f:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void) {
        if (name != null) this.name = name;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InternalTest(name, f);
    }
}