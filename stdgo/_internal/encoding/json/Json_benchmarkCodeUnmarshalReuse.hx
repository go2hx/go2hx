package stdgo._internal.encoding.json;
function benchmarkCodeUnmarshalReuse(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        if (stdgo._internal.encoding.json.Json__codeJSON._codeJSON == null) {
            _b.stopTimer();
            stdgo._internal.encoding.json.Json__codeInit._codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _r:stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse = ({} : stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse);
            while (_pb.next()) {
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(stdgo._internal.encoding.json.Json__codeJSON._codeJSON, stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>))) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((stdgo._internal.encoding.json.Json__codeJSON._codeJSON.length : stdgo.GoInt64));
    }
