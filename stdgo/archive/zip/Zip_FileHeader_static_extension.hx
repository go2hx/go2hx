package stdgo.archive.zip;
class FileHeader_static_extension {
    static public function _hasDataDescriptor(_h:FileHeader):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension._hasDataDescriptor(_h);
    }
    static public function _isZip64(_h:FileHeader):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension._isZip64(_h);
    }
    static public function setMode(_h:FileHeader, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.setMode(_h, _mode);
    }
    static public function mode(_h:FileHeader):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.mode(_h);
    }
    static public function setModTime(_h:FileHeader, _t:stdgo._internal.time.Time_Time.Time):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.setModTime(_h, _t);
    }
    static public function modTime(_h:FileHeader):stdgo._internal.time.Time_Time.Time {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.modTime(_h);
    }
    static public function fileInfo(_h:FileHeader):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        return stdgo._internal.archive.zip.Zip_FileHeader_static_extension.FileHeader_static_extension.fileInfo(_h);
    }
}
