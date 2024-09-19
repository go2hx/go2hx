package stdgo._internal.encoding.gob;
function testLocalRemoteTypesMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testData = (new stdgo.Slice<stdgo.GoUInt8>(14, 14, ...[
(9 : stdgo.GoUInt8),
(127 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _v:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct>>);
        var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_testData);
        var _err = (stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct>>>))) : stdgo.Error);
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Encode/Decode: expected error but got err == nil" : stdgo.GoString)));
        };
    }