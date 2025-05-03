package stdgo._internal.encoding.gob;
function testBadData(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1116"
        for (_i => _test in stdgo._internal.encoding.gob.Gob__baddatatests._badDataTests) {
            var __tmp__ = stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_test._input?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1118"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1119"
                _t.fatalf(("#%d: hex error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var _d = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_data)));
            _err = _d.decode(_test._data);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1123"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1124"
                _t.errorf(("decode: no error" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1125"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1127"
            if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._error?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1128"
                _t.errorf(("#%d: decode: expected %q error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._error), stdgo.Go.toInterface(_err.error()));
            };
        };
    }
