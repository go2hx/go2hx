package stdgo._internal.encoding.json;
function benchmarkUnmarshalString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _data = (("\"hello, world\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            while (_pb.next()) {
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(_s__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
