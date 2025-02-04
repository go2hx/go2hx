package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_otherpkgfields_static_extension.OtherPkgFields_static_extension) class OtherPkgFields {
    public var otherExported : stdgo.GoInt = 0;
    public function new(?otherExported:stdgo.GoInt) {
        if (otherExported != null) this.otherExported = otherExported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OtherPkgFields(otherExported);
    }
}
