package stdgo._internal.encoding.json;
function benchmarkEncodeMarshaler(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.reportAllocs();
        var _m = ({ a : (0 : stdgo.GoInt), b : (new stdgo._internal.encoding.json.Json_rawmessage.RawMessage(0, 0) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage) } : stdgo._internal.encoding.json.Json_t__struct_3.T__struct_3);
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo._internal.io.Io_discard.discard);
            while (@:check2r _pb.next()) {
                {
                    var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_3.T__struct_3>)))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
