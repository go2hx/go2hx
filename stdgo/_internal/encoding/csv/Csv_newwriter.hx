package stdgo._internal.encoding.csv;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer> {
        return (stdgo.Go.setRef(({ comma : (44 : stdgo.GoInt32), _w : stdgo._internal.bufio.Bufio_newwriter.newWriter(_w) } : stdgo._internal.encoding.csv.Csv_writer.Writer)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>);
    }
