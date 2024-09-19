package stdgo._internal.encoding.json;
function benchmarkEncoderEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        {};
        var _v = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                {
                    var _err = (stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo._internal.io.Io_discard.discard).encode(stdgo.Go.toInterface(_v)) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
