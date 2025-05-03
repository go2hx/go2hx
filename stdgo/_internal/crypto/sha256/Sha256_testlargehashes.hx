package stdgo._internal.crypto.sha256;
function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L276"
        for (_i => _test in stdgo._internal.crypto.sha256.Sha256__largeunmarshaltests._largeUnmarshalTests) {
            var _h = (stdgo._internal.crypto.sha256.Sha256_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L279"
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary((_test._state : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L280"
                    _t.errorf(("test %d could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L281"
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__safesum._safeSum(_h), _sum:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L285"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L286"
                _t.errorf(("test %d could not sum: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L287"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L290"
            if (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sum)) != (_test._sum)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L291"
                _t.errorf(("test %d sum mismatch: expect %s got %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._sum), stdgo.Go.toInterface(_sum));
            };
        };
    }
