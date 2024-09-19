package stdgo._internal.reflect;
@:structInit class OtherPkgFields {
    public var otherExported : stdgo.GoInt = 0;
    public function new(?otherExported:stdgo.GoInt) {
        if (otherExported != null) this.otherExported = otherExported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OtherPkgFields(otherExported);
    }
}
