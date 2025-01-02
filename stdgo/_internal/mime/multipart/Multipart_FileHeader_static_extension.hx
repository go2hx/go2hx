package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.FileHeader_asInterface) class FileHeader_static_extension {
    @:keep
    @:tdfield
    static public function open( _fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Error; } {
        @:recv var _fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader> = _fh;
        {
            var _b = (@:checkr _fh ?? throw "null pointer dereference")._content;
            if (_b != null) {
                var _r = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_b)), (0i64 : stdgo.GoInt64), (_b.length : stdgo.GoInt64));
                return { _0 : stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser(_r, (null : stdgo._internal.io.Io_Closer.Closer)) : stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser)), _1 : (null : stdgo.Error) };
            };
        };
        if ((@:checkr _fh ?? throw "null pointer dereference")._tmpshared) {
            var __tmp__ = stdgo._internal.os.Os_open.open((@:checkr _fh ?? throw "null pointer dereference")._tmpfile?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.mime.multipart.Multipart_File.File), _1 : _err };
            };
            var _r = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_f), (@:checkr _fh ?? throw "null pointer dereference")._tmpoff, (@:checkr _fh ?? throw "null pointer dereference").size);
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser(_r, stdgo.Go.asInterface(_f)) : stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser)), _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.os.Os_open.open((@:checkr _fh ?? throw "null pointer dereference")._tmpfile?.__copy__());
    }
}
