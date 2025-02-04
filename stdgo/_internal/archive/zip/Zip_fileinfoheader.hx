package stdgo._internal.archive.zip;
function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>; var _1 : stdgo.Error; } {
        var _size = (_fi.size() : stdgo.GoInt64);
        var _fh = (stdgo.Go.setRef(({ name : _fi.name()?.__copy__(), uncompressedSize64 : (_size : stdgo.GoUInt64) } : stdgo._internal.archive.zip.Zip_fileheader.FileHeader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        @:check2r _fh.setModTime(_fi.modTime()?.__copy__());
        @:check2r _fh.setMode(_fi.mode());
        if (((@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 > (4294967295i64 : stdgo.GoUInt64) : Bool)) {
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = (-1u32 : stdgo.GoUInt32);
        } else {
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = ((@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 : stdgo.GoUInt32);
        };
        return { _0 : _fh, _1 : (null : stdgo.Error) };
    }
