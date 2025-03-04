package stdgo._internal.crypto.sha512;
function testMarshalMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (new stdgo.Slice<() -> stdgo._internal.hash.Hash_hash.Hash>(4, 4, ...[stdgo._internal.crypto.sha512.Sha512_new_.new_, stdgo._internal.crypto.sha512.Sha512_new384.new384, stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224, stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256]) : stdgo.Slice<() -> stdgo._internal.hash.Hash_hash.Hash>);
        for (_i => _fn1 in _h) {
            for (_j => _fn2 in _h) {
                if (_i == (_j)) {
                    continue;
                };
                var _h1 = (_fn1() : stdgo._internal.hash.Hash_hash.Hash);
                var _h2 = (_fn2() : stdgo._internal.hash.Hash_hash.Hash);
                var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h1) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("i=%d: could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    continue;
                };
                {
                    var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                    if (_err == null) {
                        @:check2r _t.errorf(("i=%d, j=%d: got no error, expected one: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                    };
                };
            };
        };
    }
