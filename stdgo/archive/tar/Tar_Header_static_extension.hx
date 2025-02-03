package stdgo.archive.tar;
class Header_static_extension {
    static public function fileInfo(_h:Header):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        return stdgo._internal.archive.tar.Tar_Header_static_extension.Header_static_extension.fileInfo(_h);
    }
    static public function _allowedFormats(_h:Header):stdgo.Tuple.Tuple3<Format, stdgo.GoMap<stdgo.GoString, stdgo.GoString>, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.tar.Tar_Header_static_extension.Header_static_extension._allowedFormats(_h);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
