package stdgo._internal.encoding.json;
function benchmarkUnmapped(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _j = (("{\"s\": \"hello\", \"y\": 2, \"o\": {\"x\": 0}, \"a\": [1, 99, {\"x\": 1}]}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _s:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
            var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
            var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
            var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
            var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
            while (_pb.next()) {
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_j, stdgo.Go.toInterface(_s__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
