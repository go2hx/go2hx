package stdgo._internal.crypto.sha512;
function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L875"
        for (_i => _test in stdgo._internal.crypto.sha512.Sha512__largeunmarshaltests._largeUnmarshalTests) {
            var _h = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L878"
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary((_test._state : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L879"
                    _t.errorf(("test %d could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L880"
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.crypto.sha512.Sha512__safesum._safeSum(_h), _sum:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L884"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L885"
                _t.errorf(("test %d could not sum: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L886"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L889"
            if (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sum)) != (_test._sum)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L890"
                _t.errorf(("test %d sum mismatch: expect %s got %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._sum), stdgo.Go.toInterface(_sum));
            };
        };
    }
