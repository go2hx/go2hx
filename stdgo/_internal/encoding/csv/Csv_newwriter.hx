package stdgo._internal.encoding.csv;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer.go#L38"
        return (stdgo.Go.setRef(({ comma : (44 : stdgo.GoInt32), _w : stdgo._internal.bufio.Bufio_newwriter.newWriter(_w) } : stdgo._internal.encoding.csv.Csv_writer.Writer)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>);
    }
