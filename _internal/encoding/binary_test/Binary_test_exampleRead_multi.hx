package _internal.encoding.binary_test;
function exampleRead_multi():Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(14, 14, ...[
(24 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(239 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_b);
        var _data:_internal.encoding.binary_test.Binary_test_T__struct_7.T__struct_7 = ({ pi : (0 : stdgo.GoFloat64), uate : (0 : stdgo.GoUInt8), mine : new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt8)]), too : (0 : stdgo.GoUInt16) } : _internal.encoding.binary_test.Binary_test_T__struct_7.T__struct_7);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.Ref<_internal.encoding.binary_test.Binary_test_T__struct_7.T__struct_7>)))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_data.pi));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_data.uate));
        stdgo._internal.fmt.Fmt_printf.printf(("% x\n" : stdgo.GoString), stdgo.Go.toInterface(_data.mine));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_data.too));
    }
