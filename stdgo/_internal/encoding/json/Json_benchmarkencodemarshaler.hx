package stdgo._internal.encoding.json;
function benchmarkEncodeMarshaler(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L495"
        _b.reportAllocs();
        var _m = ({ a : (0 : stdgo.GoInt), b : (new stdgo._internal.encoding.json.Json_rawmessage.RawMessage(0, 0) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage) } : stdgo._internal.encoding.json.Json_t__struct_3.T__struct_3);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L502"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo._internal.io.Io_discard.discard);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L505"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L506"
                {
                    var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_3.T__struct_3>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L507"
                        _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
