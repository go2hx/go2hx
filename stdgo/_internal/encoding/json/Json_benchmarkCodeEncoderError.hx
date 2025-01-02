package stdgo._internal.encoding.json;
function benchmarkCodeEncoderError(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.reportAllocs();
        if (stdgo._internal.encoding.json.Json__codeJSON._codeJSON == null) {
            @:check2r _b.stopTimer();
            stdgo._internal.encoding.json.Json__codeInit._codeInit();
            @:check2r _b.startTimer();
        };
        {};
        var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>);
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo._internal.io.Io_discard.discard);
            while (@:check2r _pb.next()) {
                {
                    var _err = (@:check2r _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codeStruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_dummy)), __20:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                    };
                };
            };
        });
        @:check2r _b.setBytes((stdgo._internal.encoding.json.Json__codeJSON._codeJSON.length : stdgo.GoInt64));
    }
