package stdgo._internal.encoding.json;
function benchmarkUnmarshalString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.reportAllocs();
        var _data = ((("\"hello, world\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            var _s__pointer__ = stdgo.Go.pointer(_s);
            while (@:check2r _pb.next()) {
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(_s__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
