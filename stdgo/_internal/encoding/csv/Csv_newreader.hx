package stdgo._internal.encoding.csv;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> {
        return (stdgo.Go.setRef(({ comma : (44 : stdgo.GoInt32), _r : stdgo._internal.bufio.Bufio_newreader.newReader(_r) } : stdgo._internal.encoding.csv.Csv_reader.Reader)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>);
    }
