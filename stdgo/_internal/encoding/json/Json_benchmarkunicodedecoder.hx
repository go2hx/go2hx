package stdgo._internal.encoding.json;
function benchmarkUnicodeDecoder(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L275"
        _b.reportAllocs();
        var _j = ((("\"\\uD83D\\uDE01\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L277"
        _b.setBytes((_j.length : stdgo.GoInt64));
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(_j);
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(_r));
        var _out:stdgo.GoString = ("" : stdgo.GoString), _out__pointer__ = stdgo.Go.pointer(_out);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L281"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L282"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L283"
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface(_out__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L284"
                        _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L286"
                _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _i++;
            };
        };
    }
