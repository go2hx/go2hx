package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.FileHeader_asInterface) class FileHeader_static_extension {
    @:keep
    static public function open( _fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Error; } {
        @:recv var _fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader> = _fh;
        {
            var _b = _fh._content;
            if (_b != null) {
                var _r = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_b)), (0i64 : stdgo.GoInt64), (_b.length : stdgo.GoInt64));
                return { _0 : stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser(_r, (null : stdgo._internal.io.Io_Closer.Closer)) : stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser)), _1 : (null : stdgo.Error) };
            };
        };
        if (_fh._tmpshared) {
            var __tmp__ = stdgo._internal.os.Os_open.open(_fh._tmpfile?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : _err };
            };
            var _r = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_f), _fh._tmpoff, _fh.size);
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser(_r, stdgo.Go.asInterface(_f)) : stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser)), _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.os.Os_open.open(_fh._tmpfile?.__copy__());
    }
}
