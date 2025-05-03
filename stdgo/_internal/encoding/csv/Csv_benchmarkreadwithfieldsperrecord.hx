package stdgo._internal.encoding.csv;
function benchmarkReadWithFieldsPerRecord(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L624"
        stdgo._internal.encoding.csv.Csv__benchmarkread._benchmarkRead(_b, function(_r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):Void {
            (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord = (4 : stdgo.GoInt);
        }, ("x,y,z,w\nx,y,z,\nx,y,,\nx,,,\n,,,\n\"x\",\"y\",\"z\",\"w\"\n\"x\",\"y\",\"z\",\"\"\n\"x\",\"y\",\"\",\"\"\n\"x\",\"\",\"\",\"\"\n\"\",\"\",\"\",\"\"\n" : stdgo.GoString));
    }
