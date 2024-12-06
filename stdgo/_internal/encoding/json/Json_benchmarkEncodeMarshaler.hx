package stdgo._internal.encoding.json;
function benchmarkEncodeMarshaler(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _m = ({ a : (0 : stdgo.GoInt), b : new stdgo._internal.encoding.json.Json_RawMessage.RawMessage(0, 0) } : stdgo._internal.encoding.json.Json_T__struct_3.T__struct_3);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo._internal.io.Io_discard.discard);
            while (_pb.next()) {
                {
                    var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_3.T__struct_3>)))) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
