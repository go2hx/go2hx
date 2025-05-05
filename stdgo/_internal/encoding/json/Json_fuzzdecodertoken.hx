package stdgo._internal.encoding.json;
function fuzzDecoderToken(_f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/fuzz_test.go#L54"
        _f.add(stdgo.Go.toInterface(((("{\n\"object\": {\n\t\"slice\": [\n\t\t1,\n\t\t2.0,\n\t\t\"3\",\n\t\t[4],\n\t\t{5: {}}\n\t]\n},\n\"slice\": [[]],\n\"string\": \":)\",\n\"int\": 1e5,\n\"float\": 3e-9\"\n}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/fuzz_test.go#L70"
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
            var _r = stdgo._internal.bytes.Bytes_newreader.newReader(_b);
            var _d = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(_r));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/fuzz_test.go#L73"
            while (true) {
                var __tmp__ = _d.token(), __20:stdgo._internal.encoding.json.Json_token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/fuzz_test.go#L75"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/fuzz_test.go#L76"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/fuzz_test.go#L77"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/fuzz_test.go#L79"
                    return;
                };
            };
        }));
    }
