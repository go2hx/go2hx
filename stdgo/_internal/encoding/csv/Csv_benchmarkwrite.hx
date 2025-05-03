package stdgo._internal.encoding.csv;
function benchmarkWrite(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L105"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _w = stdgo._internal.encoding.csv.Csv_newwriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
var _err = (_w.writeAll(stdgo._internal.encoding.csv.Csv__benchmarkwritedata._benchmarkWriteData) : stdgo.Error);
//"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L108"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L109"
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L111"
                _w.flush();
                _i++;
            };
        };
    }
