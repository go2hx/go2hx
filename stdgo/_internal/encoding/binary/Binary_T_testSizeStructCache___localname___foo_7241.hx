package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241_static_extension.T_testSizeStructCache___localname___foo_7241_static_extension) class T_testSizeStructCache___localname___foo_7241 {
    public var a : stdgo.GoUInt32 = 0;
    public function new(?a:stdgo.GoUInt32) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache___localname___foo_7241(a);
    }
}
