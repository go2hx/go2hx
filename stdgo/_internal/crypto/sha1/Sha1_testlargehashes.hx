package stdgo._internal.crypto.sha1;
function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.crypto.sha1.Sha1__largeunmarshaltests._largeUnmarshalTests) {
            var _h = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary((_test._state : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("test %d could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.crypto.sha1.Sha1__safesum._safeSum(_h), _sum:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("test %d could not sum: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            if (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sum)) != (_test._sum)) {
                @:check2r _t.errorf(("test %d sum mismatch: expect %s got %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._sum), stdgo.Go.toInterface(_sum));
            };
        };
    }
