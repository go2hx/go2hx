package stdgo._internal.testing.quick;
@:structInit @:using(stdgo._internal.testing.quick.Quick_checkerror_static_extension.CheckError_static_extension) class CheckError {
    public var count : stdgo.GoInt = 0;
    public var in_ : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?count:stdgo.GoInt, ?in_:stdgo.Slice<stdgo.AnyInterface>) {
        if (count != null) this.count = count;
        if (in_ != null) this.in_ = in_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CheckError(count, in_);
    }
}
