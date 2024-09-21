package _internal.encoding.binary_test;
function exampleByteOrder_put():Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint16((_b.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (1000 : stdgo.GoUInt16));
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint16((_b.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (2000 : stdgo.GoUInt16));
        stdgo._internal.fmt.Fmt_printf.printf(("% x\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
