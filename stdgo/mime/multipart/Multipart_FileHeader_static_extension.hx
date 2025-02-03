package stdgo.mime.multipart;
class FileHeader_static_extension {
    static public function open(_fh:FileHeader):stdgo.Tuple<File, stdgo.Error> {
        final _fh = (_fh : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_FileHeader_static_extension.FileHeader_static_extension.open(_fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
