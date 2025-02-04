package stdgo._internal.archive.tar;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> {
        return (stdgo.Go.setRef(({ _r : _r, _curr : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader(_r, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader>)) } : stdgo._internal.archive.tar.Tar_reader.Reader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
    }
