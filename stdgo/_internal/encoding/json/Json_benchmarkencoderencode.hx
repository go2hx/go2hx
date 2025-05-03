package stdgo._internal.encoding.json;
function benchmarkEncoderEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L514"
        _b.reportAllocs();
        {};
        var _v = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L519"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L520"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L521"
                {
                    var _err = (stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo._internal.io.Io_discard.discard).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L522"
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
