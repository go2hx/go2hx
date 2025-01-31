package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_T_testNoFixedSize___localname___Person_12888_static_extension.T_testNoFixedSize___localname___Person_12888_static_extension) class T_testNoFixedSize___localname___Person_12888 {
    public var age : stdgo.GoInt = 0;
    public var weight : stdgo.GoFloat64 = 0;
    public var height : stdgo.GoFloat64 = 0;
    public function new(?age:stdgo.GoInt, ?weight:stdgo.GoFloat64, ?height:stdgo.GoFloat64) {
        if (age != null) this.age = age;
        if (weight != null) this.weight = weight;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNoFixedSize___localname___Person_12888(age, weight, height);
    }
}
