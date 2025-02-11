package stdgo._internal.hash.crc32;
function _testGoldenIEEE(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _crcFunc:stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt32):Void {
        for (__4 => _g in stdgo._internal.hash.crc32.Crc32__golden._golden) {
            {
                var _crc = (_crcFunc((_g._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                if (_crc != (_g._ieee)) {
                    @:check2r _t.errorf(("IEEE(%s) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_crc), stdgo.Go.toInterface(_g._ieee));
                };
            };
        };
    }
