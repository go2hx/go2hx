package stdgo._internal.encoding.json;
function benchmarkIssue34127(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.reportAllocs();
        var _j = ({ bar : ("foobar" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_2.T__struct_2);
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            while (@:check2r _pb.next()) {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_j) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_2.T__struct_2>)))), __20:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
