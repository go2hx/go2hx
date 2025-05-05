package stdgo._internal.encoding.json;
function benchmarkIssue10335(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L389"
        _b.reportAllocs();
        var _j = ((("{\"a\":{ }}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L391"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _s:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L393"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L394"
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_j, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L395"
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
