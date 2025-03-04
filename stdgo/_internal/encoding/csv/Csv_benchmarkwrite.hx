package stdgo._internal.encoding.csv;
function benchmarkWrite(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _w = stdgo._internal.encoding.csv.Csv_newwriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
var _err = (@:check2r _w.writeAll(stdgo._internal.encoding.csv.Csv__benchmarkwritedata._benchmarkWriteData) : stdgo.Error);
if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                };
@:check2r _w.flush();
                _i++;
            };
        };
    }
