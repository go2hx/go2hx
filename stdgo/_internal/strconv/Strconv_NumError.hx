package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.strconv.Strconv_NumError_static_extension.NumError_static_extension) class NumError {
    public var func : stdgo.GoString = "";
    public var num : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?func:stdgo.GoString, ?num:stdgo.GoString, ?err:stdgo.Error) {
        if (func != null) this.func = func;
        if (num != null) this.num = num;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NumError(func, num, err);
    }
}
