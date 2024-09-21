package _internal.encoding.binary_test;
function exampleRead():Void {
        var _pi:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(24 : stdgo.GoUInt8), (45 : stdgo.GoUInt8), (68 : stdgo.GoUInt8), (84 : stdgo.GoUInt8), (251 : stdgo.GoUInt8), (33 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = stdgo._internal.bytes.Bytes_newReader.newReader(_b);
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_pi))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(_pi));
    }
