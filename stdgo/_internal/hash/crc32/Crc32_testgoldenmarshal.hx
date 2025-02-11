package stdgo._internal.hash.crc32;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        @:check2r _t.run(("IEEE" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            for (__12 => _g in stdgo._internal.hash.crc32.Crc32__golden._golden) {
                var _h = (stdgo._internal.hash.crc32.Crc32_new_.new_(stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable) : stdgo._internal.hash.Hash_hash32.Hash32);
                var _h2 = (stdgo._internal.hash.crc32.Crc32_new_.new_(stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable) : stdgo._internal.hash.Hash_hash32.Hash32);
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    continue;
                };
                if ((_state : stdgo.GoString) != (_g._halfStateIEEE)) {
                    @:check2r _t.errorf(("IEEE(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfStateIEEE));
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
                if (_h.sum32() != (_h2.sum32())) {
                    @:check2r _t.errorf(("IEEE(%s) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum32()), stdgo.Go.toInterface(_h2.sum32()));
                };
            };
        });
        @:check2r _t.run(("Castagnoli" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _table = stdgo._internal.hash.crc32.Crc32_maketable.makeTable((-2097792136u32 : stdgo.GoUInt32));
            for (__20 => _g in stdgo._internal.hash.crc32.Crc32__golden._golden) {
                var _h = (stdgo._internal.hash.crc32.Crc32_new_.new_(_table) : stdgo._internal.hash.Hash_hash32.Hash32);
                var _h2 = (stdgo._internal.hash.crc32.Crc32_new_.new_(_table) : stdgo._internal.hash.Hash_hash32.Hash32);
                stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    continue;
                };
                if ((_state : stdgo.GoString) != (_g._halfStateCastagnoli)) {
                    @:check2r _t.errorf(("Castagnoli(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfStateCastagnoli));
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
                if (_h.sum32() != (_h2.sum32())) {
                    @:check2r _t.errorf(("Castagnoli(%s) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum32()), stdgo.Go.toInterface(_h2.sum32()));
                };
            };
        });
    }
