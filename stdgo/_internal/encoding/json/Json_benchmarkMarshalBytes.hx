package stdgo._internal.encoding.json;
function benchmarkMarshalBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        _b.run(("32" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchMarshalBytes._benchMarshalBytes((32 : stdgo.GoInt)));
        _b.run(("256" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchMarshalBytes._benchMarshalBytes((256 : stdgo.GoInt)));
        _b.run(("4096" : stdgo.GoString), stdgo._internal.encoding.json.Json__benchMarshalBytes._benchMarshalBytes((4096 : stdgo.GoInt)));
    }
