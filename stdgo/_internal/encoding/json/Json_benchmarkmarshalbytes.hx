package stdgo._internal.encoding.json;
function benchmarkMarshalBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L228"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L230"
        _b.run(("32" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbytes._benchMarshalBytes((32 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L233"
        _b.run(("256" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbytes._benchMarshalBytes((256 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L235"
        _b.run(("4096" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbytes._benchMarshalBytes((4096 : stdgo.GoInt)));
    }
