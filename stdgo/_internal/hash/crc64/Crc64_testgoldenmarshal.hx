package stdgo._internal.hash.crc64;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L77"
        _t.run(("ISO" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _table = stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-2882303761517117440i64 : stdgo.GoUInt64));
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L79"
            for (__8 => _g in stdgo._internal.hash.crc64.Crc64__golden._golden) {
                var _h = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                var _h2 = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L83"
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L86"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L87"
                    _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L88"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L91"
                if ((_state : stdgo.GoString) != (_g._halfStateISO)) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L92"
                    _t.errorf(("ISO crc64(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfStateISO));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L93"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L96"
                {
                    var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L97"
                        _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L98"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L101"
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L102"
                stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L104"
                if (_h.sum64() != (_h2.sum64())) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L105"
                    _t.errorf(("ISO crc64(%s) = 0x%x != marshaled (0x%x)" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum64()), stdgo.Go.toInterface(_h2.sum64()));
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L109"
        _t.run(("ECMA" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _table = stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-3932672073523589310i64 : stdgo.GoUInt64));
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L111"
            for (__16 => _g in stdgo._internal.hash.crc64.Crc64__golden._golden) {
                var _h = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                var _h2 = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L115"
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L118"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L119"
                    _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L120"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L123"
                if ((_state : stdgo.GoString) != (_g._halfStateECMA)) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L124"
                    _t.errorf(("ECMA crc64(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfStateECMA));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L125"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L128"
                {
                    var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L129"
                        _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L130"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L133"
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L134"
                stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L136"
                if (_h.sum64() != (_h2.sum64())) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L137"
                    _t.errorf(("ECMA crc64(%s) = 0x%x != marshaled (0x%x)" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum64()), stdgo.Go.toInterface(_h2.sum64()));
                };
            };
        });
    }
