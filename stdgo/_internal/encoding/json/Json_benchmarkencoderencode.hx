package stdgo._internal.encoding.json;
function benchmarkEncoderEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.reportAllocs();
        {};
        var _v = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092>);
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            while (@:check2r _pb.next()) {
                {
                    var _err = (@:check2r stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo._internal.io.Io_discard.discard).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
