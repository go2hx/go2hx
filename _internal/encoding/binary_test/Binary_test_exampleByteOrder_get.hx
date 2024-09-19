package _internal.encoding.binary_test;
function exampleByteOrder_get():Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(232 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (208 : stdgo.GoUInt8), (7 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _x1 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint16((_b.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        var _x2 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint16((_b.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        stdgo._internal.fmt.Fmt_printf.printf(("%#04x %#04x\n" : stdgo.GoString), stdgo.Go.toInterface(_x1), stdgo.Go.toInterface(_x2));
    }
