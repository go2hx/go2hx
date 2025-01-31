package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
@:local @:using(stdgo._internal.encoding.base64.Base64_T__struct_1_static_extension.T__struct_1_static_extension) @:using(stdgo._internal.encoding.base64.Base64_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>;
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoInt;
};
