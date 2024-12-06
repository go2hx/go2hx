package stdgo._internal.encoding.json;
function benchmarkIssue34127(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        var _j = ({ bar : ("foobar" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_2.T__struct_2);
        var _j__pointer__ = (stdgo.Go.setRef(_j) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_2.T__struct_2>);
        var _j__pointer__ = (stdgo.Go.setRef(_j) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_2.T__struct_2>);
        var _j__pointer__ = (stdgo.Go.setRef(_j) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_2.T__struct_2>);
        var _j__pointer__ = (stdgo.Go.setRef(_j) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_2.T__struct_2>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_j__pointer__))), __20:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
