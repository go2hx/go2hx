package stdgo._internal.encoding.binary;
function _testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _b:stdgo.Slice<stdgo.GoUInt8>, _s1:stdgo.AnyInterface):Void {
        var _s2:stdgo._internal.encoding.binary.Binary_struct.Struct = ({} : stdgo._internal.encoding.binary.Binary_struct.Struct);
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_b)), _order, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_struct.Struct>)))) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("Read" : stdgo.GoString), _order, _err, stdgo.Go.toInterface(stdgo.Go.asInterface(_s2)), _s1);
    }
