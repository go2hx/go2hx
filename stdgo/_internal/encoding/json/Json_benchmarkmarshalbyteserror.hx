package stdgo._internal.encoding.json;
function benchmarkMarshalBytesError(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L239"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L241"
        _b.run(("32" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbyteserror._benchMarshalBytesError((32 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L244"
        _b.run(("256" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbyteserror._benchMarshalBytesError((256 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L246"
        _b.run(("4096" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbyteserror._benchMarshalBytesError((4096 : stdgo.GoInt)));
    }
