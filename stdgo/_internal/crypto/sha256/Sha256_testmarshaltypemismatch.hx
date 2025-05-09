package stdgo._internal.crypto.sha256;
function testMarshalTypeMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h1 = (stdgo._internal.crypto.sha256.Sha256_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _h2 = (stdgo._internal.crypto.sha256.Sha256_new224.new224() : stdgo._internal.hash.Hash_hash.Hash);
        var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h1) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L191"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L192"
            _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L195"
        {
            var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state1) : stdgo.Error);
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L196"
                _t.errorf(("no error when one was expected" : stdgo.GoString));
            };
        };
    }
