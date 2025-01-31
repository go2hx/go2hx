package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.binary.Binary__testConstant._testConstant(_t, (16u32 : stdgo.GoUInt), (3 : stdgo.GoInt));
        stdgo._internal.encoding.binary.Binary__testConstant._testConstant(_t, (32u32 : stdgo.GoUInt), (5 : stdgo.GoInt));
        stdgo._internal.encoding.binary.Binary__testConstant._testConstant(_t, (64u32 : stdgo.GoUInt), (10 : stdgo.GoInt));
    }
