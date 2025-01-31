package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _x in stdgo._internal.encoding.binary.Binary__tests._tests) {
            stdgo._internal.encoding.binary.Binary__testVarint._testVarint(_t, _x);
            stdgo._internal.encoding.binary.Binary__testVarint._testVarint(_t, -_x);
        };
        {
            var _x = ((7i64 : stdgo.GoInt64) : stdgo.GoInt64);
            while (_x != ((0i64 : stdgo.GoInt64))) {
                stdgo._internal.encoding.binary.Binary__testVarint._testVarint(_t, _x);
stdgo._internal.encoding.binary.Binary__testVarint._testVarint(_t, -_x);
                _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
    }
