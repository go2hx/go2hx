package stdgo._internal.hash.crc32;
function testMarshalTableMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h1 = (stdgo._internal.hash.crc32.Crc32_new_.new_(stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable) : stdgo._internal.hash.Hash_hash32.Hash32);
        var _h2 = (stdgo._internal.hash.crc32.Crc32_new_.new_(stdgo._internal.hash.crc32.Crc32_maketable.makeTable((-2097792136u32 : stdgo.GoUInt32))) : stdgo._internal.hash.Hash_hash32.Hash32);
        var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h1) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L193"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L194"
            _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L197"
        {
            var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state1) : stdgo.Error);
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L198"
                _t.errorf(("no error when one was expected" : stdgo.GoString));
            };
        };
    }
