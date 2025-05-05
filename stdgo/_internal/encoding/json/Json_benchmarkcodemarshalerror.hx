package stdgo._internal.encoding.json;
function benchmarkCodeMarshalError(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L151"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L152"
        if (stdgo._internal.encoding.json.Json__codejson._codeJSON == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L153"
            _b.stopTimer();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L154"
            stdgo._internal.encoding.json.Json__codeinit._codeInit();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L155"
            _b.startTimer();
        };
        {};
        var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L166"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L167"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L168"
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codestruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse>)))), __20:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L169"
                        _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L171"
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_dummy))), __21:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L172"
                        _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                    };
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L176"
        _b.setBytes((stdgo._internal.encoding.json.Json__codejson._codeJSON.length : stdgo.GoInt64));
    }
