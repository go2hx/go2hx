package stdgo._internal.encoding.csv;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> {
        return (stdgo.Go.setRef(({ comma : (44 : stdgo.GoInt32), _r : stdgo._internal.bufio.Bufio_newReader.newReader(_r) } : stdgo._internal.encoding.csv.Csv_Reader.Reader)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
    }
