package stdgo._internal.encoding.json;
function benchmarkCodeEncoderError(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L104"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L105"
        if (stdgo._internal.encoding.json.Json__codejson._codeJSON == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L106"
            _b.stopTimer();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L107"
            stdgo._internal.encoding.json.Json__codeinit._codeInit();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L108"
            _b.startTimer();
        };
        {};
        var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L119"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo._internal.io.Io_discard.discard);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L121"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L122"
                {
                    var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codestruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L123"
                        _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L125"
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_dummy))), __20:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L126"
                        _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                    };
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L130"
        _b.setBytes((stdgo._internal.encoding.json.Json__codejson._codeJSON.length : stdgo.GoInt64));
    }
