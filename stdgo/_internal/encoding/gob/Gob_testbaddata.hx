package stdgo._internal.encoding.gob;
function testBadData(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.encoding.gob.Gob__baddatatests._badDataTests) {
            var __tmp__ = stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_test._input?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("#%d: hex error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var _d = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_data)));
            _err = @:check2r _d.decode(_test._data);
            if (_err == null) {
                @:check2r _t.errorf(("decode: no error" : stdgo.GoString));
                continue;
            };
            if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._error?.__copy__())) {
                @:check2r _t.errorf(("#%d: decode: expected %q error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._error), stdgo.Go.toInterface(_err.error()));
            };
        };
    }
