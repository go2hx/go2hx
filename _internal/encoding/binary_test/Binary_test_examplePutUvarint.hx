package _internal.encoding.binary_test;
function examplePutUvarint():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _x in (new stdgo.Slice<stdgo.GoUInt64>(6, 6, ...[(1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (127i64 : stdgo.GoUInt64), (128i64 : stdgo.GoUInt64), (255i64 : stdgo.GoUInt64), (256i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>)) {
            var _n = (stdgo._internal.encoding.binary.Binary_putUvarint.putUvarint(_buf, _x) : stdgo.GoInt);
            stdgo._internal.fmt.Fmt_printf.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
