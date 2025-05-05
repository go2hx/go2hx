package stdgo._internal.encoding.json;
function benchmarkUnmapped(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L418"
        _b.reportAllocs();
        var _j = ((("{\"s\": \"hello\", \"y\": 2, \"o\": {\"x\": 0}, \"a\": [1, 99, {\"x\": 1}]}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L420"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _s:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L422"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L423"
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_j, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L424"
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
