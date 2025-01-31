package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var _j = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    while ((_j < (10u32 : stdgo.GoUInt) : Bool)) {
                        stdgo._internal.encoding.binary.Binary_putUvarint.putUvarint(_buf, ((1i64 : stdgo.GoUInt64) << ((_j * (7u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64));
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
