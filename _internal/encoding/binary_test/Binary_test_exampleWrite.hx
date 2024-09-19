package _internal.encoding.binary_test;
function exampleWrite():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _pi:stdgo.GoFloat64 = (3.141592653589793 : stdgo.GoFloat64);
        var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(_pi)) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
