package stdgo._internal.encoding.json;
function benchmarkUnicodeDecoder(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _j = (("\"\\uD83D\\uDE01\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((_j.length : stdgo.GoInt64));
        var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_j);
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r));
        var _out:stdgo.GoString = ("" : stdgo.GoString);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_out))) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            });
        };
    }
