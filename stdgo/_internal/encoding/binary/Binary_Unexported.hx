package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_Unexported_static_extension.Unexported_static_extension) class Unexported {
    public var _a : stdgo.GoInt32 = 0;
    public function new(?_a:stdgo.GoInt32) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Unexported(_a);
    }
}
