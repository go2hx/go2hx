package stdgo._internal.encoding.json;
function benchmarkCodeMarshal(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        if (stdgo._internal.encoding.json.Json__codeJSON._codeJSON == null) {
            _b.stopTimer();
            stdgo._internal.encoding.json.Json__codeInit._codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codeStruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>))), __24:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((stdgo._internal.encoding.json.Json__codeJSON._codeJSON.length : stdgo.GoInt64));
    }