package stdgo._internal.hash.crc64;
function testMarshalTableMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h1 = (stdgo._internal.hash.crc64.Crc64_new_.new_(stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-2882303761517117440i64 : stdgo.GoUInt64))) : stdgo._internal.hash.Hash_hash64.Hash64);
        var _h2 = (stdgo._internal.hash.crc64.Crc64_new_.new_(stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-3932672073523589310i64 : stdgo.GoUInt64))) : stdgo._internal.hash.Hash_hash64.Hash64);
        var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h1) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state1) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.errorf(("no error when one was expected" : stdgo.GoString));
            };
        };
    }
