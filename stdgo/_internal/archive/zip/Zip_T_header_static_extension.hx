package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_header_asInterface) class T_header_static_extension {
    @:embedded
    public static function _isZip64( __self__:stdgo._internal.archive.zip.Zip_T_header.T_header):Bool return __self__._isZip64();
    @:embedded
    public static function _hasDataDescriptor( __self__:stdgo._internal.archive.zip.Zip_T_header.T_header):Bool return __self__._hasDataDescriptor();
    @:embedded
    public static function setMode( __self__:stdgo._internal.archive.zip.Zip_T_header.T_header, __0:stdgo._internal.io.fs.Fs_FileMode.FileMode) __self__.setMode(__0);
    @:embedded
    public static function setModTime( __self__:stdgo._internal.archive.zip.Zip_T_header.T_header, __0:stdgo._internal.time.Time_Time.Time) __self__.setModTime(__0);
    @:embedded
    public static function mode( __self__:stdgo._internal.archive.zip.Zip_T_header.T_header):stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.mode();
    @:embedded
    public static function modTime( __self__:stdgo._internal.archive.zip.Zip_T_header.T_header):stdgo._internal.time.Time_Time.Time return __self__.modTime();
    @:embedded
    public static function fileInfo( __self__:stdgo._internal.archive.zip.Zip_T_header.T_header):stdgo._internal.io.fs.Fs_FileInfo.FileInfo return __self__.fileInfo();
}
