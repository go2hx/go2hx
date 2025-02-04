package stdgo._internal.encoding.json;
function benchmarkMarshalBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.reportAllocs();
        @:check2r _b.run(("32" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbytes._benchMarshalBytes((32 : stdgo.GoInt)));
        @:check2r _b.run(("256" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbytes._benchMarshalBytes((256 : stdgo.GoInt)));
        @:check2r _b.run(("4096" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchmarshalbytes._benchMarshalBytes((4096 : stdgo.GoInt)));
    }
