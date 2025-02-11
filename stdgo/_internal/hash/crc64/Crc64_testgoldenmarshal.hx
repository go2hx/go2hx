package stdgo._internal.hash.crc64;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        @:check2r _t.run(("ISO" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _table = stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-2882303761517117440i64 : stdgo.GoUInt64));
            for (__8 => _g in stdgo._internal.hash.crc64.Crc64__golden._golden) {
                var _h = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                var _h2 = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    continue;
                };
                if ((_state : stdgo.GoString) != (_g._halfStateISO)) {
                    @:check2r _t.errorf(("ISO crc64(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfStateISO));
                    continue;
                };
                {
                    var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                if (_h.sum64() != (_h2.sum64())) {
                    @:check2r _t.errorf(("ISO crc64(%s) = 0x%x != marshaled (0x%x)" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum64()), stdgo.Go.toInterface(_h2.sum64()));
                };
            };
        });
        @:check2r _t.run(("ECMA" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _table = stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-3932672073523589310i64 : stdgo.GoUInt64));
            for (__16 => _g in stdgo._internal.hash.crc64.Crc64__golden._golden) {
                var _h = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                var _h2 = (stdgo._internal.hash.crc64.Crc64_new_.new_(_table) : stdgo._internal.hash.Hash_hash64.Hash64);
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    continue;
                };
                if ((_state : stdgo.GoString) != (_g._halfStateECMA)) {
                    @:check2r _t.errorf(("ECMA crc64(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfStateECMA));
                    continue;
                };
                {
                    var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                if (_h.sum64() != (_h2.sum64())) {
                    @:check2r _t.errorf(("ECMA crc64(%s) = 0x%x != marshaled (0x%x)" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum64()), stdgo.Go.toInterface(_h2.sum64()));
                };
            };
        });
    }
