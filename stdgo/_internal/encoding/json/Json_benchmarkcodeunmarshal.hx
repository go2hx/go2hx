package stdgo._internal.encoding.json;
function benchmarkCodeUnmarshal(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L314"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L315"
        if (stdgo._internal.encoding.json.Json__codejson._codeJSON == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L316"
            _b.stopTimer();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L317"
            stdgo._internal.encoding.json.Json__codeinit._codeInit();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L318"
            _b.startTimer();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L320"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L321"
            while (_pb.next()) {
                var _r:stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse = ({} : stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L323"
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(stdgo._internal.encoding.json.Json__codejson._codeJSON, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L324"
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L328"
        _b.setBytes((stdgo._internal.encoding.json.Json__codejson._codeJSON.length : stdgo.GoInt64));
    }
