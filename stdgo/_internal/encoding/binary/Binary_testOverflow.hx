package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.binary.Binary__testOverflow._testOverflow(_t, (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoUInt64), (-10 : stdgo.GoInt), stdgo._internal.encoding.binary.Binary__errOverflow._errOverflow);
        stdgo._internal.encoding.binary.Binary__testOverflow._testOverflow(_t, (new stdgo.Slice<stdgo.GoUInt8>(15, 15, ...[
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoUInt64), (-11 : stdgo.GoInt), stdgo._internal.encoding.binary.Binary__errOverflow._errOverflow);
        stdgo._internal.encoding.binary.Binary__testOverflow._testOverflow(_t, (new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (-1i64 : stdgo.GoUInt64), (-11 : stdgo.GoInt), stdgo._internal.encoding.binary.Binary__errOverflow._errOverflow);
    }
