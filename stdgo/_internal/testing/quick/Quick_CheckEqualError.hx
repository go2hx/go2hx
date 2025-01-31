package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.testing.quick.Quick_CheckEqualError_static_extension.CheckEqualError_static_extension) class CheckEqualError {
    @:embedded
    public var checkError : stdgo._internal.testing.quick.Quick_CheckError.CheckError = ({} : stdgo._internal.testing.quick.Quick_CheckError.CheckError);
    public var out1 : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var out2 : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?checkError:stdgo._internal.testing.quick.Quick_CheckError.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>) {
        if (checkError != null) this.checkError = checkError;
        if (out1 != null) this.out1 = out1;
        if (out2 != null) this.out2 = out2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CheckEqualError(checkError, out1, out2);
    }
}
