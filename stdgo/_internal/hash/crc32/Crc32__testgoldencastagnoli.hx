package stdgo._internal.hash.crc32;
function _testGoldenCastagnoli(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _crcFunc:stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt32):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L80"
        for (__4 => _g in stdgo._internal.hash.crc32.Crc32__golden._golden) {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L81"
            {
                var _crc = (_crcFunc((_g._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                if (_crc != (_g._castagnoli)) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L82"
                    _t.errorf(("Castagnoli(%s) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_crc), stdgo.Go.toInterface(_g._castagnoli));
                };
            };
        };
    }
