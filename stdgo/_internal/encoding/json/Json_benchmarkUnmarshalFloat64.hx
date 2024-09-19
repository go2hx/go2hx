package stdgo._internal.encoding.json;
function benchmarkUnmarshalFloat64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _data = (("3.14" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            while (_pb.next()) {
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.pointer(_f))) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
