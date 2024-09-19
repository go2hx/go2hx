package stdgo._internal.archive.tar;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> {
        return (stdgo.Go.setRef(({ _r : _r, _curr : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader(_r, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader>)) } : stdgo._internal.archive.tar.Tar_Reader.Reader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>);
    }
