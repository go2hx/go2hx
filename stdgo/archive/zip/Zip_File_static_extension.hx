package stdgo.archive.zip;
class File_static_extension {
    static public function _findBodyOffset(_f:File):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension._findBodyOffset(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function openRaw(_f:File):stdgo.Tuple<stdgo._internal.io.Io_Reader.Reader, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.openRaw(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function open(_f:File):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.open(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dataOffset(_f:File):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.dataOffset(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_File.File):Bool {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_File.File):Bool {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_File.File, _0:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_File.File, _0:stdgo._internal.time.Time_Time.Time):Void {
        stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_File_static_extension.File_static_extension.fileInfo(__self__);
    }
}
