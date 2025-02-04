package stdgo._internal.testing.quick;
@:structInit @:using(stdgo._internal.testing.quick.Quick_checkequalerror_static_extension.CheckEqualError_static_extension) class CheckEqualError {
    @:embedded
    public var checkError : stdgo._internal.testing.quick.Quick_checkerror.CheckError = ({} : stdgo._internal.testing.quick.Quick_checkerror.CheckError);
    public var out1 : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var out2 : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?checkError:stdgo._internal.testing.quick.Quick_checkerror.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>) {
        if (checkError != null) this.checkError = checkError;
        if (out1 != null) this.out1 = out1;
        if (out2 != null) this.out2 = out2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CheckEqualError(checkError, out1, out2);
    }
}
