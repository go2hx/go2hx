package stdgo.archive.zip;
class T_fileWriter_static_extension {
    static public function _writeDataDescriptor(_w:T_fileWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._writeDataDescriptor(_w);
    }
    static public function _close(_w:T_fileWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._close(_w);
    }
    static public function write(_w:T_fileWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isZip64(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):Bool {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._isZip64(__self__);
    }
    public static function _hasDataDescriptor(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):Bool {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension._hasDataDescriptor(__self__);
    }
    public static function setMode(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter, _0:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.setMode(__self__, _0);
    }
    public static function setModTime(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter, _0:stdgo._internal.time.Time_Time.Time):Void {
        stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.setModTime(__self__, _0);
    }
    public static function mode(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.modTime(__self__);
    }
    public static function fileInfo(__self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        return stdgo._internal.archive.zip.Zip_T_fileWriter_static_extension.T_fileWriter_static_extension.fileInfo(__self__);
    }
}
