package _internal.vendor.golang_dot_org.x.text.transform;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.transform.Transform_T_discard_static_extension.T_discard_static_extension) class T_discard {
    @:embedded
    public var nopResetter : _internal.vendor.golang_dot_org.x.text.transform.Transform_NopResetter.NopResetter = ({} : _internal.vendor.golang_dot_org.x.text.transform.Transform_NopResetter.NopResetter);
    public function new(?nopResetter:_internal.vendor.golang_dot_org.x.text.transform.Transform_NopResetter.NopResetter) {
        if (nopResetter != null) this.nopResetter = nopResetter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function reset() this.nopResetter.reset();
    public function __copy__() {
        return new T_discard(nopResetter);
    }
}
