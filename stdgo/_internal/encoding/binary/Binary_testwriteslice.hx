package stdgo._internal.encoding.binary;
function testWriteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__res._res)) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("WriteSlice" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _err, stdgo.Go.toInterface(@:check2r _buf.bytes()), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__src._src));
    }
