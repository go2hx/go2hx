package _internal.encoding.binary_test;
function examplePutVarint():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _x in (new stdgo.Slice<stdgo.GoInt64>(9, 9, ...[(-65i64 : stdgo.GoInt64), (-64i64 : stdgo.GoInt64), (-2i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (63i64 : stdgo.GoInt64), (64i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            var _n = (stdgo._internal.encoding.binary.Binary_putVarint.putVarint(_buf, _x) : stdgo.GoInt);
            stdgo._internal.fmt.Fmt_printf.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
