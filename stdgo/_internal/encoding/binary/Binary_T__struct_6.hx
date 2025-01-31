package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:local @:using(stdgo._internal.encoding.binary.Binary_T__struct_6_static_extension.T__struct_6_static_extension) @:using(stdgo._internal.encoding.binary.Binary_T__struct_6_static_extension.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _in : stdgo.Slice<stdgo.GoUInt8>;
    public var _name : stdgo.GoString;
    public var _wantN : stdgo.GoInt;
    public var _wantValue : stdgo.GoUInt64;
};
