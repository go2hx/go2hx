package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_bitsmismatch_static_extension.BitsMismatch_static_extension) class BitsMismatch {
    public var base : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var got : stdgo.GoUInt64 = 0;
    public var want : stdgo.GoUInt64 = 0;
    public function new(?base:stdgo.GoUIntptr, ?got:stdgo.GoUInt64, ?want:stdgo.GoUInt64) {
        if (base != null) this.base = base;
        if (got != null) this.got = got;
        if (want != null) this.want = want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BitsMismatch(base, got, want);
    }
}
