package stdgo._internal.archive.zip;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> {
        return (stdgo.Go.setRef(({ _cw : (stdgo.Go.setRef(({ _w : stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newwriter.newWriter(_w)) } : stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>) } : stdgo._internal.archive.zip.Zip_writer.Writer)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>);
    }
