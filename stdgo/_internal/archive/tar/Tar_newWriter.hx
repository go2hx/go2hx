package stdgo._internal.archive.tar;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer> {
        return (stdgo.Go.setRef(({ _w : _w, _curr : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter(_w, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter>)) } : stdgo._internal.archive.tar.Tar_Writer.Writer)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_Writer.Writer>);
    }
