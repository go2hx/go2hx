package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function readVarint(_r:stdgo._internal.io.Io_ByteReader.ByteReader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readUvarint.readUvarint(_r), _ux:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _x = ((_ux >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        if ((_ux & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _err };
    }
