package stdgo._internal.encoding.json;
function benchmarkIssue34127(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L402"
        _b.reportAllocs();
        var _j = ({ bar : ("foobar" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_2.T__struct_2);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L408"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L409"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L410"
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_j) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_2.T__struct_2>)))), __20:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L411"
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
