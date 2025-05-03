package stdgo._internal.encoding.json;
function benchmarkCodeMarshal(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L134"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L135"
        if (stdgo._internal.encoding.json.Json__codejson._codeJSON == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L136"
            _b.stopTimer();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L137"
            stdgo._internal.encoding.json.Json__codeinit._codeInit();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L138"
            _b.startTimer();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L140"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L141"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L142"
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codestruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse>)))), __20:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L143"
                        _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L147"
        _b.setBytes((stdgo._internal.encoding.json.Json__codejson._codeJSON.length : stdgo.GoInt64));
    }
