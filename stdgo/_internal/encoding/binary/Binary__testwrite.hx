package stdgo._internal.encoding.binary;
function _testWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _b:stdgo.Slice<stdgo.GoUInt8>, _s1:stdgo.AnyInterface):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), _order, _s1) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("Write" : stdgo.GoString), _order, _err, stdgo.Go.toInterface(@:check2r _buf.bytes()), stdgo.Go.toInterface(_b));
    }
