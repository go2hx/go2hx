package stdgo._internal.encoding.csv;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer> {
        return (stdgo.Go.setRef(({ comma : (44 : stdgo.GoInt32), _w : stdgo._internal.bufio.Bufio_newWriter.newWriter(_w) } : stdgo._internal.encoding.csv.Csv_Writer.Writer)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>);
    }
