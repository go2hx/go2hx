package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function putVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):stdgo.GoInt {
        var _ux = ((_x : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _ux = (-1 ^ _ux);
        };
        return stdgo._internal.encoding.binary.Binary_putUvarint.putUvarint(_buf, _ux);
    }
