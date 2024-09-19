package stdgo._internal.archive.zip;
function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>; var _1 : stdgo.Error; } {
        var _size = (_fi.size() : stdgo.GoInt64);
        var _fh = (stdgo.Go.setRef(({ name : _fi.name()?.__copy__(), uncompressedSize64 : (_size : stdgo.GoUInt64) } : stdgo._internal.archive.zip.Zip_FileHeader.FileHeader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        _fh.setModTime(_fi.modTime()?.__copy__());
        _fh.setMode(_fi.mode());
        if ((_fh.uncompressedSize64 > (4294967295i64 : stdgo.GoUInt64) : Bool)) {
            _fh.uncompressedSize = (-1u32 : stdgo.GoUInt32);
        } else {
            _fh.uncompressedSize = (_fh.uncompressedSize64 : stdgo.GoUInt32);
        };
        return { _0 : _fh, _1 : (null : stdgo.Error) };
    }
