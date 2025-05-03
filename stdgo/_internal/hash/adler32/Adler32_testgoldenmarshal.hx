package stdgo._internal.hash.adler32;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L94"
        for (__0 => _g in stdgo._internal.hash.adler32.Adler32__golden._golden) {
            var _h = (stdgo._internal.hash.adler32.Adler32_new_.new_() : stdgo._internal.hash.Hash_hash32.Hash32);
            var _h2 = (stdgo._internal.hash.adler32.Adler32_new_.new_() : stdgo._internal.hash.Hash_hash32.Hash32);
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L98"
            stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L101"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L102"
                _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L103"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L106"
            if ((_state : stdgo.GoString) != (_g._halfState)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L107"
                _t.errorf(("checksum(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L108"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L111"
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L112"
                    _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L113"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L116"
            stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L117"
            stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L119"
            if (_h.sum32() != (_h2.sum32())) {
                //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L120"
                _t.errorf(("checksum(%q) = 0x%x != marshaled (0x%x)" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum32()), stdgo.Go.toInterface(_h2.sum32()));
            };
        };
    }
