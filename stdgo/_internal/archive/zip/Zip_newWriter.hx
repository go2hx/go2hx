package stdgo._internal.archive.zip;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer> {
        return (stdgo.Go.setRef(({ _cw : (stdgo.Go.setRef(({ _w : stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newWriter.newWriter(_w)) } : stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>) } : stdgo._internal.archive.zip.Zip_Writer.Writer)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_Writer.Writer>);
    }
