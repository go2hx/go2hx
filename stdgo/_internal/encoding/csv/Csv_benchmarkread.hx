package stdgo._internal.encoding.csv;
function benchmarkRead(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        stdgo._internal.encoding.csv.Csv__benchmarkread._benchmarkRead(_b, null, ("x,y,z,w\nx,y,z,\nx,y,,\nx,,,\n,,,\n\"x\",\"y\",\"z\",\"w\"\n\"x\",\"y\",\"z\",\"\"\n\"x\",\"y\",\"\",\"\"\n\"x\",\"\",\"\",\"\"\n\"\",\"\",\"\",\"\"\n" : stdgo.GoString));
    }
