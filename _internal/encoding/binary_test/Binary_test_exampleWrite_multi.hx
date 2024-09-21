package _internal.encoding.binary_test;
function exampleWrite_multi():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _data:stdgo.Slice<stdgo.AnyInterface> = (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((61374 : stdgo.GoUInt16)), stdgo.Go.toInterface((-54 : stdgo.GoInt8)), stdgo.Go.toInterface((254 : stdgo.GoUInt8))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__0 => _v in _data) {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), _v) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
