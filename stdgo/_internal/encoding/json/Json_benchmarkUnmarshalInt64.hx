package stdgo._internal.encoding.json;
function benchmarkUnmarshalInt64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _data = (("3" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _x:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            while (_pb.next()) {
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.pointer(_x))) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
